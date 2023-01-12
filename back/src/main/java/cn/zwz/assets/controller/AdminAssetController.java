package cn.zwz.assets.controller;

import cn.zwz.assets.entity.AdminAsset;
import cn.zwz.assets.entity.AdminAssetSupplier;
import cn.zwz.assets.entity.AdminAssetWare;
import cn.zwz.assets.service.IAdminAssetService;
import cn.zwz.assets.service.IAdminAssetSupplierService;
import cn.zwz.assets.service.IAdminAssetWareService;
import cn.zwz.basics.baseVo.PageVo;
import cn.zwz.basics.baseVo.Result;
import cn.zwz.basics.utils.PageUtil;
import cn.zwz.basics.utils.ResultUtil;
import cn.zwz.data.utils.ZwzNullUtils;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
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
@Api(tags = "行政资产档案")
@RequestMapping("/zwz/adminAsset")
@Transactional
public class AdminAssetController {

    @Autowired
    private IAdminAssetService iAdminAssetService;

    @Autowired
    private IAdminAssetWareService iAdminAssetWareService;

    @Autowired
    private IAdminAssetSupplierService iAdminAssetSupplierService;

    @RequestMapping(value = "/getByPage", method = RequestMethod.GET)
    @ApiOperation(value = "查询资产种类")
    public Result<IPage<AdminAsset>> getByPage(@ModelAttribute AdminAsset asset, @ModelAttribute PageVo page) {
        QueryWrapper<AdminAsset> qw = new QueryWrapper<>();
        if(!ZwzNullUtils.isNull(asset.getType())) {
            qw.eq("type",asset.getType());
        }
        if(!ZwzNullUtils.isNull(asset.getName())) {
            qw.like("name",asset.getName());
        }
        IPage<AdminAsset> data = iAdminAssetService.page(PageUtil.initMpPage(page),qw);
        for (AdminAsset adminAsset : data.getRecords()) {
            String gys = adminAsset.getGys();
            String mrck = adminAsset.getMrck();
            if(gys != null) {
                AdminAssetSupplier aas = iAdminAssetSupplierService.getById(gys);
                if(aas != null) {
                    adminAsset.setGysName(aas.getName());
                }
            }
            if(mrck != null) {
                AdminAssetWare aaw = iAdminAssetWareService.getById(mrck);
                if(aaw != null) {
                    adminAsset.setMrck(aaw.getName());
                }
            }
        }
        return new ResultUtil<IPage<AdminAsset>>().setData(data);
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    @ApiOperation(value = "新增资产种类")
    public Result<AdminAsset> insert(AdminAsset adminAsset){
        long number = iAdminAssetService.count() + 1;
        adminAsset.setBm("ZC" + number);
        adminAsset.setQrCode((int)number);
        String mrck = adminAsset.getMrck();
        if(mrck != null) {
            AdminAssetWare ck = iAdminAssetWareService.getById(mrck);
            if(ck != null) {
                adminAsset.setMrckName(ck.getName());
            }
        }
        if(iAdminAssetService.saveOrUpdate(adminAsset)){
            return new ResultUtil<AdminAsset>().setData(adminAsset);
        }
        return ResultUtil.error();
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ApiOperation(value = "修改资产种类")
    public Result<AdminAsset> update(AdminAsset adminAsset){
        String mrck = adminAsset.getMrck();
        if(mrck != null) {
            AdminAssetWare ck = iAdminAssetWareService.getById(mrck);
            if(ck != null) {
                adminAsset.setMrckName(ck.getName());
            }
        }
        if(iAdminAssetService.saveOrUpdate(adminAsset)){
            return new ResultUtil<AdminAsset>().setData(adminAsset);
        }
        return ResultUtil.error();
    }

    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    @ApiOperation(value = "删除资产种类")
    public Result<Object> delAllByIds(@RequestParam String[] ids){
        for(String id : ids){
            iAdminAssetService.removeById(id);
        }
        return ResultUtil.success();
    }
}
