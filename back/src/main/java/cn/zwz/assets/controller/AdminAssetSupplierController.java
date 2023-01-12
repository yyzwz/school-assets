package cn.zwz.assets.controller;

import cn.hutool.core.date.DateUtil;
import cn.zwz.basics.baseVo.PageVo;
import cn.zwz.basics.baseVo.Result;
import cn.zwz.basics.utils.PageUtil;
import cn.zwz.basics.utils.ResultUtil;
import cn.zwz.assets.entity.AdminAssetSupplier;
import cn.zwz.assets.service.IAdminAssetSupplierService;
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
@Api(tags = "行政资产供应商")
@RequestMapping("/zwz/adminAssetSupplier")
@Transactional
public class AdminAssetSupplierController {

    @Autowired
    private IAdminAssetSupplierService iAdminAssetSupplierService;

    @RequestMapping(value = "/get/{id}", method = RequestMethod.GET)
    @ApiOperation(value = "查询单个资产供应商")
    public Result<AdminAssetSupplier> get(@PathVariable String id){
        return new ResultUtil<AdminAssetSupplier>().setData(iAdminAssetSupplierService.getById(id));
    }

    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    @ApiOperation(value = "查询所有资产供应商")
    public Result<List<AdminAssetSupplier>> getAll(){
        return new ResultUtil<List<AdminAssetSupplier>>().setData(iAdminAssetSupplierService.list());
    }

    @RequestMapping(value = "/getByPage", method = RequestMethod.GET)
    @ApiOperation(value = "查询资产供应商")
    public Result<IPage<AdminAssetSupplier>> getByPage(@ModelAttribute AdminAssetSupplier supplier,@ModelAttribute PageVo page){
        QueryWrapper<AdminAssetSupplier> qw = new QueryWrapper<>();
        if(!ZwzNullUtils.isNull(supplier.getName())) {
            qw.like("name",supplier.getName());
        }
        return new ResultUtil<IPage<AdminAssetSupplier>>().setData(iAdminAssetSupplierService.page(PageUtil.initMpPage(page),qw));
    }

    @RequestMapping(value = "/insertOrUpdate", method = RequestMethod.POST)
    @ApiOperation(value = "增改资产库存")
    public Result<AdminAssetSupplier> saveOrUpdate(AdminAssetSupplier adminAssetSupplier){

        if(iAdminAssetSupplierService.saveOrUpdate(adminAssetSupplier)){
            return new ResultUtil<AdminAssetSupplier>().setData(adminAssetSupplier);
        }
        return ResultUtil.error();
    }

    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    @ApiOperation(value = "删除资产库存")
    public Result<Object> delByIds(@RequestParam String[] ids){
        for(String id : ids){
            iAdminAssetSupplierService.removeById(id);
        }
        return ResultUtil.success();
    }
}
