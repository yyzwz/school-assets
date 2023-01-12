package cn.zwz.assets.controller;

import cn.hutool.core.date.DateUtil;
import cn.zwz.basics.baseVo.PageVo;
import cn.zwz.basics.baseVo.Result;
import cn.zwz.basics.utils.PageUtil;
import cn.zwz.basics.utils.ResultUtil;
import cn.zwz.assets.entity.AdminAssetUnit;
import cn.zwz.assets.service.IAdminAssetUnitService;
import cn.zwz.data.utils.ZwzNullUtils;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author 开发者
 */
@RestController
@Api(tags = "行政资产计量单位")
@RequestMapping("/zwz/adminAssetUnit")
@Transactional
public class AdminAssetUnitController {

    @Autowired
    private IAdminAssetUnitService iAdminAssetUnitService;

    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    @ApiOperation(value = "查询所有资产计量单位")
    public Result<List<AdminAssetUnit>> getAll(){
        List<AdminAssetUnit> list = iAdminAssetUnitService.list();
        return new ResultUtil<List<AdminAssetUnit>>().setData(list);
    }

    @RequestMapping(value = "/getByPage", method = RequestMethod.GET)
    @ApiOperation(value = "查询资产计量单位")
    public Result<IPage<AdminAssetUnit>> getByPage(@ModelAttribute AdminAssetUnit unit, @ModelAttribute PageVo page) {
        QueryWrapper<AdminAssetUnit> qw = new QueryWrapper<>();
        if(!ZwzNullUtils.isNull(unit.getName())) {
            qw.like("name",unit.getName());
        }
        return new ResultUtil<IPage<AdminAssetUnit>>().setData(iAdminAssetUnitService.page(PageUtil.initMpPage(page),qw));
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    @ApiOperation(value = "新增资产计量单位")
    public Result<AdminAssetUnit> insert(AdminAssetUnit adminAssetUnit){
        int number = (int)iAdminAssetUnitService.count() + 1;
        adminAssetUnit.setBm("DW" + number);
        if(iAdminAssetUnitService.saveOrUpdate(adminAssetUnit)){
            return new ResultUtil<AdminAssetUnit>().setData(adminAssetUnit);
        }
        return ResultUtil.error();
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ApiOperation(value = "编辑资产计量单位")
    public Result<AdminAssetUnit> update(AdminAssetUnit adminAssetUnit){
        if(iAdminAssetUnitService.saveOrUpdate(adminAssetUnit)){
            return new ResultUtil<AdminAssetUnit>().setData(adminAssetUnit);
        }
        return ResultUtil.error();
    }

    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    @ApiOperation(value = "删除资产计量单位")
    public Result<Object> delAllByIds(@RequestParam String[] ids){
        for(String id : ids){
            iAdminAssetUnitService.removeById(id);
        }
        return ResultUtil.success();
    }
}
