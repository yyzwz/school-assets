package cn.zwz.assets.controller;

import cn.hutool.core.date.DateUtil;
import cn.zwz.basics.baseVo.PageVo;
import cn.zwz.basics.baseVo.Result;
import cn.zwz.basics.utils.PageUtil;
import cn.zwz.basics.utils.ResultUtil;
import cn.zwz.basics.utils.SecurityUtil;
import cn.zwz.data.entity.User;
import cn.zwz.data.service.IDepartmentService;
import cn.zwz.data.service.IUserService;
import cn.zwz.assets.entity.AdminAssets;
import cn.zwz.assets.service.IAdminAssetsService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author 开发者
 */
@RestController
@Api(tags = "行政资产库存管理接口")
@RequestMapping("/zwz/adminAssets")
@Transactional
public class AdminAssetsController {

    @Autowired
    private IAdminAssetsService iAdminAssetsService;

    @Autowired
    private SecurityUtil securityUtil;

    @Autowired
    private IUserService iUserService;

    @Autowired
    private IDepartmentService iDepartmentService;

    @RequestMapping(value = "/getByPage", method = RequestMethod.GET)
    @ApiOperation(value = "查询资产库存")
    public Result<IPage<AdminAssets>> getByPage(PageVo page){
        IPage<AdminAssets> data = iAdminAssetsService.page(PageUtil.initMpPage(page));
        return new ResultUtil<IPage<AdminAssets>>().setData(data);
    }

    @RequestMapping(value = "/insertOrUpdate", method = RequestMethod.POST)
    @ApiOperation(value = "增改资产库存")
    public Result<AdminAssets> saveOrUpdate(AdminAssets adminAssets){
        if(iAdminAssetsService.saveOrUpdate(adminAssets)){
            return new ResultUtil<AdminAssets>().setData(adminAssets);
        }
        return ResultUtil.error();
    }

    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    @ApiOperation(value = "销毁资产")
    public Result<Object> delAllByIds(@RequestParam String[] ids){
        User user = securityUtil.getCurrUser();
        for(String id : ids){
            AdminAssets assets = iAdminAssetsService.getById(id);
            if(assets != null) {
                assets.setStatus(1);
                assets.setDestroyName(user.getNickname());
                assets.setDestroyTime(DateUtil.now());
                iAdminAssetsService.saveOrUpdate(assets);
            }
        }
        return ResultUtil.success();
    }

    @RequestMapping(value = "/outWage", method = RequestMethod.POST)
    @ApiOperation(value = "资产出库")
    public Result<Object> outWage(@RequestParam String[] ids,@RequestParam String type,@RequestParam String userId){
        User user = securityUtil.getCurrUser();
        for(String id : ids){
            AdminAssets assets = iAdminAssetsService.getById(id);
            if(assets != null) {
                if(type.equals("按人出库")) {
                    assets.setGiveType("按人出库");
                    assets.setGiveId(userId);
                    assets.setGiveName(iUserService.getById(userId).getNickname());
                } else if(type.equals("按部门出库")) {
                    assets.setGiveType("按部门出库");
                    assets.setGiveId(userId);
                    assets.setGiveName(iUserService.getById(userId).getDepartmentTitle());
                } else {
                    assets.setGiveType("销毁出库");
                    assets.setGiveId("");
                    assets.setGiveName("");
                    assets.setStatus(1);
                }
                assets.setOutFlag(1);
                assets.setOutWork(user.getUsername());
                assets.setOutTime(DateUtil.now());
                iAdminAssetsService.saveOrUpdate(assets);
            }
        }
        return ResultUtil.success();
    }
}
