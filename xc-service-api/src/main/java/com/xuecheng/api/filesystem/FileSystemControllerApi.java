package com.xuecheng.api.filesystem;

//
//@Api(value="文件系统接口",description = "文件系统接口，提供数据模型的管理、查询接口")
//public interface FileSystemControllerApi {
//
//    @ApiOperation("上传文件接口")
//    public UploadFileResult upload(MultipartFile file,
//                                   String filetag,
//                                   String businesskey,
//                                   String metadata);//映射的实体类是Map,
//                    // 这里是String因为这里的数据是json格式的,需要在传进来后转成map
//
//}


import com.xuecheng.framework.domain.filesystem.response.UploadFileResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.multipart.MultipartFile;

/**
 * Created by Administrator.
 */
@Api(value="文件管理接口",description = "文件管理接口，提供文件的增、删、改、查")
public interface FileSystemControllerApi {

    //上传文件
    @ApiOperation("上传文件接口")
    public UploadFileResult upload(MultipartFile multipartFile,
                                   String filetag,
                                   String businesskey,
                                   String metadata);

}
