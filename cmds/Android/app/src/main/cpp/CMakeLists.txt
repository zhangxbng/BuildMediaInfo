# For more information about using CMake with Android Studio, read the
# documentation: https://d.android.com/studio/projects/add-native-code.html

# Sets the minimum version of CMake required to build the native library.

cmake_minimum_required(VERSION 3.10.2)

# Declares and names the project.

project("myapplication")

# Creates and names a library, sets it as either STATIC
# or SHARED, and provides the relative paths to its source code.
# You can define multiple libraries, and CMake builds them for you.
# Gradle automatically packages shared libraries with your APK.

add_definitions(-DUNICODE -D_UNICODE)


add_library( # Sets the name of the library.
             native-lib

             # Sets the library as a shared library.
             SHARED

             # Provides a relative path to your source file(s).
             native-lib.cpp )


set(ZenLib_SOURCES_PATH       ${CMAKE_CURRENT_SOURCE_DIR}/../../../../../../../ZenLib/Source)
set(ZenLib_SRCS
        ${ZenLib_SOURCES_PATH}/ZenLib/Conf.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/CriticalSection.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/Dir.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/File.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/FileName.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/InfoMap.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/int128s.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/int128u.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/MemoryDebug.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/OS_Utils.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/Translation.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/Thread.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/Utils.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/Ztring.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/ZtringList.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/ZtringListList.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/ZtringListListF.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/Format/Html/Html_Handler.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/Format/Html/Html_Request.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/Format/Http/Http_Cookies.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/Format/Http/Http_Handler.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/Format/Http/Http_Request.cpp
        ${ZenLib_SOURCES_PATH}/ZenLib/Format/Http/Http_Utils.cpp
        )

set(MediaInfoLib_SOURCES_PATH       ${CMAKE_CURRENT_SOURCE_DIR}/../../../../../../../MediaInfoLib/Source)
set(MediaInfoLib_SRCS
        ${MediaInfoLib_SOURCES_PATH}/ThirdParty/tinyxml2/tinyxml2.cpp
        ${MediaInfoLib_SOURCES_PATH}/ThirdParty/md5/md5.c
        ${MediaInfoLib_SOURCES_PATH}/ThirdParty/aes-gladman/aes_modes.c
        ${MediaInfoLib_SOURCES_PATH}/ThirdParty/aes-gladman/aescrypt.c
        ${MediaInfoLib_SOURCES_PATH}/ThirdParty/aes-gladman/aeskey.c
        ${MediaInfoLib_SOURCES_PATH}/ThirdParty/aes-gladman/aestab.c
        ${MediaInfoLib_SOURCES_PATH}/ThirdParty/sha1-gladman/sha1.c
        ${MediaInfoLib_SOURCES_PATH}/ThirdParty/sha2-gladman/sha2.c
        ${MediaInfoLib_SOURCES_PATH}/ThirdParty/hmac-gladman/hmac.c
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/File__Analyze.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/File__Analyze_Buffer.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/File__Analyze_Buffer_MinimizeSize.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/File__Analyze_Element.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/File__Analyze_Streams.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/File__Analyze_Streams_Finish.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/File__Base.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/File__MultipleParsing.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/File__Duplicate.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/File__HasReferences.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/File_Dummy.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/File_Other.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/File_Unknown.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/HashWrapper.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/MediaInfo.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/MediaInfo_Config.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/MediaInfo_Config_Automatic.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/MediaInfo_Config_MediaInfo.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/MediaInfo_Config_PerPackage.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/MediaInfo_File.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/MediaInfo_Inform.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/MediaInfo_Internal.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/MediaInfoList.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/MediaInfoList_Internal.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/TimeCode.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Archive/File_7z.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Archive/File_Ace.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Archive/File_Bzip2.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Archive/File_Elf.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Archive/File_Gzip.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Archive/File_Iso9660.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Archive/File_Mz.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Archive/File_Rar.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Archive/File_Tar.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Archive/File_Zip.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Aac.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Aac_GeneralAudio.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Aac_GeneralAudio_Sbr.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Aac_GeneralAudio_Sbr_Ps.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Aac_Main.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Aac_Others.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Ac3.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Ac4.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Adpcm.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Als.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Amr.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Amv.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Ape.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Au.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Caf.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Celt.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_ChannelGrouping.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_ChannelSplitting.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Dsdiff.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Dsf.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Dts.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_DolbyE.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_ExtendedModule.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Flac.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_ImpulseTracker.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_La.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Midi.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Module.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Mpc.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_MpcSv8.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Mpega.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Mpegh3da.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_OpenMG.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Opus.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Pcm.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Pcm_M2ts.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Pcm_Vob.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Ps2Audio.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Rkau.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_ScreamTracker3.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_SmpteSt0302.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_SmpteSt0337.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_SmpteSt0331.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Speex.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Tak.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Tta.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_TwinVQ.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Usac.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Vorbis.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Audio/File_Wvpk.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Duplicate/File__Duplicate__Base.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Duplicate/File__Duplicate__Writer.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Duplicate/File__Duplicate_MpegTs.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Export/Export_EbuCore.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Export/Export_Niso.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Export/Export_Fims.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Export/Export_Mpeg7.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Export/Export_PBCore.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Export/Export_PBCore2.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Export/Export_reVTMD.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Image/File_ArriRaw.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Image/File_Bmp.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Image/File_Bpg.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Image/File_Dds.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Image/File_Dpx.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Image/File_Exr.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Image/File_Gif.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Image/File_Ico.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Image/File_Jpeg.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Image/File_Pcx.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Image/File_Png.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Image/File_Psd.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Image/File_Rle.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Image/File_Tiff.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Image/File_Tga.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File__ReferenceFilesHelper.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File__ReferenceFilesHelper_Resource.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File__ReferenceFilesHelper_Sequence.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Aaf.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Ancillary.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Bdmv.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Cdxa.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_DashMpd.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_DcpAm.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_DcpCpl.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_DcpPkl.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Dpg.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_DvDif.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_DvDif_Analysis.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Dvdv.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Dxw.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Flv.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Gxf.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_HdsF4m.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Hls.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Gxf.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Gxf_TimeCode.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Ibi.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Ibi_Creation.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Ism.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Ivf.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Lxf.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Mk.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_MiXml.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Mpeg4.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Mpeg4_Descriptors.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Mpeg4_Elements.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Mpeg4_TimeCode.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Mpeg_Descriptors.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Mpeg_Psi.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_MpegPs.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_MpegTs.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_MpegTs_Duplicate.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Mxf.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Nut.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Ogg.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Ogg_SubElement.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_P2_Clip.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Pmp.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Ptx.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Riff.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Riff_Elements.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Rm.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_SequenceInfo.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Skm.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Swf.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Umf.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Vbi.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Wm.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Wm_Elements.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Wtv.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Multiple/File_Xdcam_Clip.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Reader/Reader_Directory.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Reader/Reader_File.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Reader/Reader_libcurl.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Reader/Reader_libmms.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Tag/File__Tags.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Tag/File_ApeTag.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Tag/File_Id3.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Tag/File_Id3v2.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Tag/File_Lyrics3.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Tag/File_Lyrics3v2.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Tag/File_PropertyList.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Tag/File_VorbisCom.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Tag/File_Xmp.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_AribStdB24B37.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_Cdp.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_Cmml.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_DvbSubtitle.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_DtvccTransport.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_Eia608.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_Eia708.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_Kate.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_N19.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_OtherText.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_Pdf.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_Pgs.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_Scc.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_Scte20.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_Sdp.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_SubRip.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_Teletext.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_TimedText.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Text/File_Ttml.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_Aic.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_AfdBarData.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_Av1.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_Avc.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_Avc_Duplicate.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_AvsV.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_Canopus.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_CineForm.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_Dirac.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_DolbyVisionMetadata.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_Ffv1.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_Flic.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_Fraps.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_H263.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_Hevc.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_HuffYuv.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_Lagarith.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_Mpeg4v.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_Mpegv.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_ProRes.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_Theora.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_Vc1.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_Vc3.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_Vp8.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/Video/File_Y4m.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/XmlUtils.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfo/OutputHelpers.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfoDLL/MediaInfoJNI.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfoDLL/MediaInfoDLL.cpp
        ${MediaInfoLib_SOURCES_PATH}/MediaInfoDLL/MediaInfoDLL.def
        ${MediaInfoLib_SOURCES_PATH}/MediaInfoDLL/MediaInfoDLL.rc
        )


include_directories(${MediaInfoLib_SOURCES_PATH})
include_directories(${MediaInfoLib_SOURCES_PATH}/ThirdParty/md5/)
include_directories(${MediaInfoLib_SOURCES_PATH}/ThirdParty/base64/)
include_directories(${MediaInfoLib_SOURCES_PATH}/ThirdParty/aes-gladman/)
include_directories(${MediaInfoLib_SOURCES_PATH}/ThirdParty/sha1-gladman/)
include_directories(${MediaInfoLib_SOURCES_PATH}/ThirdParty/sha2-gladman/)
include_directories(${MediaInfoLib_SOURCES_PATH}/ThirdParty/hmac-gladman/)



set(MediaInfoLib_SRCS
        ${MediaInfoLib_SRCS}
        ${ZenLib_SRCS}
        )




add_library( # Sets the name of the library.
        mediainfo

        # Sets the library as a static library.
        STATIC

        # Provides a relative path to your source file(s).
        ${MediaInfoLib_SRCS} )

# Searches for a specified prebuilt library and stores the path as a
# variable. Because CMake includes system libraries in the search path by
# default, you only need to specify the name of the public NDK library
# you want to add. CMake verifies that the library exists before
# completing its build.

find_library( # Sets the name of the path variable.
              log-lib

              # Specifies the name of the NDK library that
              # you want CMake to locate.
              log )

# Specifies libraries CMake should link to your target library. You
# can link multiple libraries, such as libraries you define in this
# build script, prebuilt third-party libraries, or system libraries.

target_link_libraries( # Specifies the target library.
                       native-lib

                       # Links the target library to the log library
                       # included in the NDK.
                       ${log-lib}
        mediainfo
        )

target_include_directories(mediainfo PRIVATE
        ${ZenLib_SOURCES_PATH}
        ${MediaInfoLib_SOURCES_PATH}
        ${MediaInfoLib_SOURCES_PATH}/ThirdParty/md5/
        ${MediaInfoLib_SOURCES_PATH}/ThirdParty/base64/
        ${MediaInfoLib_SOURCES_PATH}/ThirdParty/aes-gladman/
        ${MediaInfoLib_SOURCES_PATH}/ThirdParty/sha1-gladman/
        ${MediaInfoLib_SOURCES_PATH}/ThirdParty/sha2-gladman/
        ${MediaInfoLib_SOURCES_PATH}/ThirdParty/hmac-gladman/
        ${MediaInfoLib_SOURCES_PATH}/ThirdParty/tinyxml2/
        )

target_compile_definitions(mediainfo PRIVATE
        MEDIAINFO_LIBMMS_NO
        MEDIAINFO_LIBCURL_NO)