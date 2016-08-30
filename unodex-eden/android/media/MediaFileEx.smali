.class public Landroid/media/MediaFileEx;
.super Ljava/lang/Object;
.source "MediaFileEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFileEx$MethodOverride;,
        Landroid/media/MediaFileEx$PrivateAccess;
    }
.end annotation


# static fields
.field static final FIRST_AUDIO_FILE_TYPE_EX:I = 0x3e9

.field static final FIRST_DRM_FILE_TYPE_EX:I = 0x515

.field static final FIRST_IMAGE_FILE_TYPE_EX:I = 0x4b1

.field static final FIRST_VIDEO_FILE_TYPE_EX:I = 0x44d

.field static final LAST_AUDIO_FILE_TYPE_EX:I = 0x3f1

.field static final LAST_DRM_FILE_TYPE_EX:I = 0x51a

.field static final LAST_IMAGE_FILE_TYPE_EX:I = 0x4b4

.field static final LAST_VIDEO_FILE_TYPE_EX:I = 0x458

.field private static final TAG:Ljava/lang/String; = "MediaFileEx"

.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Landroid/media/MediaFileEx$PrivateAccess;->ajc$interFieldInit$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sFileTypeMap()V

    invoke-static {}, Landroid/media/MediaFileEx$PrivateAccess;->ajc$interFieldInit$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sFileTypeToFormatMap()V

    invoke-static {}, Landroid/media/MediaFileEx$PrivateAccess;->ajc$interFieldInit$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sMimeTypeToFormatMap()V

    invoke-static {}, Landroid/media/MediaFileEx$PrivateAccess;->ajc$interFieldInit$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sFormatToMimeTypeMap()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addLGFileType()V
    .registers 9

    .prologue
    const/16 v8, 0x44f

    const/16 v7, 0x44e

    const/16 v6, 0x3f0

    const/16 v5, 0x3e9

    const/16 v4, 0x1c

    .line 53
    const-string v0, "WAV"

    const/16 v1, 0x3ec

    const-string v2, "audio/wav"

    const/16 v3, 0x3008

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 54
    const-string v0, "QCP"

    const/16 v1, 0x3ea

    const-string v2, "audio/qcelp"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    const-string v0, "OGA"

    const/4 v1, 0x7

    const-string v2, "audio/ogg"

    const v3, 0xb902

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 56
    const-string v0, "3GPP"

    const-string v1, "audio/3gpp"

    const v2, 0xb984

    invoke-static {v0, v5, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 57
    const-string v0, "3GA"

    const-string v1, "audio/3gpp"

    invoke-static {v0, v5, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    const-string v0, "DIVX"

    const/16 v1, 0x450

    const-string v2, "video/divx"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 60
    const-string v0, "SKM"

    const/16 v1, 0x451

    const-string v2, "video/skm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 61
    const-string v0, "K3G"

    const/16 v1, 0x452

    const-string v2, "video/k3g"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    const-string v0, "FLV"

    const-string v1, "video/flv"

    invoke-static {v0, v7, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    const-string v0, "F4V"

    const-string v1, "video/flv"

    invoke-static {v0, v7, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    const-string v0, "OGM"

    const-string v1, "video/ogm"

    invoke-static {v0, v8, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 66
    const-string v0, "OGV"

    const-string v1, "video/ogm"

    invoke-static {v0, v8, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 68
    const-string v0, "MPG"

    const-string v1, "video/mp2ts"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    const-string v0, "AVI"

    const/16 v1, 0x1d

    const-string v2, "video/avi"

    const/16 v3, 0x300a

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 71
    invoke-static {}, Landroid/media/MediaFileEx;->isWMVEnabled()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 72
    const-string v0, "ASF"

    const/16 v1, 0x1a

    const-string v2, "video/x-ms-asf"

    const/16 v3, 0x300c

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 74
    :cond_94
    const-string v0, "DMB"

    const/16 v1, 0x44d

    const-string v2, "video/dmb"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    const-string v0, "BDMB"

    const/16 v1, 0x453

    const-string v2, "video/bdmb"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    const-string v0, "DCI"

    const/16 v1, 0x4b1

    const-string v2, "image/dci"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    const-string v0, "JPS"

    const/16 v1, 0x4b2

    const-string v2, "image/jps"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    const-string v0, "MPO"

    const/16 v1, 0x4b3

    const-string v2, "image/mpo"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    const-string v0, "JPE"

    const/16 v1, 0x4b4

    const-string v2, "image/jpe"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    const-string v0, "RA"

    const-string v1, "audio/rm"

    invoke-static {v0, v6, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    const-string v0, "RAM"

    const-string v1, "audio/rm"

    invoke-static {v0, v6, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 89
    const-string v0, "RM"

    const/16 v1, 0x454

    const-string v2, "video/rm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 90
    const-string v0, "RV"

    const/16 v1, 0x455

    const-string v2, "video/rm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    const-string v0, "RMVB"

    const/16 v1, 0x454

    const-string v2, "video/rm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    const-string v0, "MP2"

    const/4 v1, 0x1

    const-string v2, "audio/mpeg"

    const/16 v3, 0x3009

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 95
    const-string v0, "M2TS"

    const-string v1, "video/mp2ts"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    const-string v0, "MTS"

    const-string v1, "video/mp2ts"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    const-string v0, "true"

    const-string v1, "mmp.enable.mov"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 100
    const-string v0, "MOV"

    const/16 v1, 0x457

    const-string v2, "video/mov"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    const-string v0, "QT"

    const/16 v1, 0x457

    const-string v2, "video/quicktime"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    :cond_12b
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 107
    const-string v0, "ISMA"

    const/16 v1, 0x3f1

    const-string v2, "audio/mp4"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    const-string v0, "ISMV"

    const/16 v1, 0x458

    const-string v2, "video/mp4"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    :cond_14b
    const-string v0, "TP"

    const-string v1, "video/mp2ts"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 113
    const-string v0, "MPG"

    const/16 v1, 0x456

    const-string v2, "video/mp2p"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 114
    const-string v0, "MPEG"

    const/16 v1, 0x456

    const-string v2, "video/mp2p"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    const-string v0, "AC3"

    const/16 v1, 0x3ed

    const-string v2, "audio/ac3"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    const-string v0, "EC3"

    const/16 v1, 0x3ee

    const-string v2, "audio/eac3"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    const-string v0, "DTS"

    const/16 v1, 0x3ef

    const-string v2, "audio/dts"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    const-string v0, "ADTS"

    const/16 v1, 0x8

    const-string v2, "audio/aac-adts"

    const v3, 0xb903

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 122
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v0, :cond_1c5

    .line 123
    const-string v0, "DM"

    const/16 v1, 0x515

    const-string v2, "application/vnd.oma.drm.message"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    const-string v0, "DCF"

    const/16 v1, 0x516

    const-string v2, "application/vnd.oma.drm.content"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 126
    const-string v0, "ODF"

    const/16 v1, 0x517

    const-string v2, "application/vnd.oma.drm.dcf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 127
    const-string v0, "O4A"

    const/16 v1, 0x519

    const-string v2, "application/vnd.oma.drm.dcf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    const-string v0, "O4V"

    const/16 v1, 0x518

    const-string v2, "application/vnd.oma.drm.dcf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    const-string v0, "O4I"

    const/16 v1, 0x51a

    const-string v2, "application/vnd.oma.drm.dcf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    :cond_1c5
    const-string v0, "LQM"

    const/16 v1, 0x579

    const-string v2, "application/x-qmemoplus"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    return-void
.end method

.method public static ajc$get$sFileTypeMap()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/media/MediaFileEx;->sFileTypeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static ajc$get$sFileTypeToFormatMap()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/media/MediaFileEx;->sFileTypeToFormatMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static ajc$get$sFormatToMimeTypeMap()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/media/MediaFileEx;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static ajc$get$sMimeTypeToFormatMap()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/media/MediaFileEx;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static ajc$set$sFileTypeMap(Ljava/util/HashMap;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Landroid/media/MediaFileEx;->sFileTypeMap:Ljava/util/HashMap;

    return-void
.end method

.method public static ajc$set$sFileTypeToFormatMap(Ljava/util/HashMap;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Landroid/media/MediaFileEx;->sFileTypeToFormatMap:Ljava/util/HashMap;

    return-void
.end method

.method public static ajc$set$sFormatToMimeTypeMap(Ljava/util/HashMap;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Landroid/media/MediaFileEx;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    return-void
.end method

.method public static ajc$set$sMimeTypeToFormatMap(Ljava/util/HashMap;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Landroid/media/MediaFileEx;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    return-void
.end method

.method static duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/media/MediaFileEx$PrivateAccess;->aspectOf()Landroid/media/MediaFileEx$PrivateAccess;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/MediaFileEx;->sFileTypeMap_aroundBody1$advice(Landroid/media/MediaFileEx$PrivateAccess;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;

    move-result-object v1

    .line 34
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFile$MediaFileType;

    .line 35
    .local v0, "type":Landroid/media/MediaFile$MediaFileType;
    if-eqz v0, :cond_2e

    .line 36
    iget-object v1, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 37
    const-string v1, "MediaFileEx"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_2d
    return-void

    .line 42
    :cond_2e
    invoke-static {p0, p1, p2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2d
.end method

.method static duplicateFileType(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 7
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "mtpFormatCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-static {p0, p1, p2}, Landroid/media/MediaFileEx;->duplicateFileType(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Landroid/media/MediaFileEx$PrivateAccess;->aspectOf()Landroid/media/MediaFileEx$PrivateAccess;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/media/MediaFileEx;->sFileTypeToFormatMap_aroundBody3$advice(Landroid/media/MediaFileEx$PrivateAccess;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;

    move-result-object v0

    .line 47
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/media/MediaFileEx$PrivateAccess;->aspectOf()Landroid/media/MediaFileEx$PrivateAccess;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/media/MediaFileEx;->sMimeTypeToFormatMap_aroundBody5$advice(Landroid/media/MediaFileEx$PrivateAccess;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;

    move-result-object v0

    .line 48
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/media/MediaFileEx$PrivateAccess;->aspectOf()Landroid/media/MediaFileEx$PrivateAccess;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/media/MediaFileEx;->sFormatToMimeTypeMap_aroundBody7$advice(Landroid/media/MediaFileEx$PrivateAccess;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;

    move-result-object v0

    .line 49
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public static isDMBFileType(I)Z
    .registers 2
    .param p0, "fileType"    # I

    .prologue
    .line 148
    const/16 v0, 0x44d

    if-eq p0, v0, :cond_e

    .line 149
    const/16 v0, 0x453

    if-eq p0, v0, :cond_e

    .line 150
    const/16 v0, 0x4b1

    if-eq p0, v0, :cond_e

    .line 148
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private static isWMVEnabled()Z
    .registers 5

    .prologue
    .line 136
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v2

    .line 137
    .local v2, "decoders":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 138
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-lt v3, v0, :cond_d

    .line 144
    const/4 v4, 0x0

    :goto_c
    return v4

    .line 139
    :cond_d
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 140
    .local v1, "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v1, v4, :cond_19

    .line 141
    const/4 v4, 0x1

    goto :goto_c

    .line 138
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method private static final sFileTypeMap_aroundBody0()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 34
    invoke-static {}, Landroid/media/MediaFileEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sFileTypeMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private static final sFileTypeMap_aroundBody1$advice(Landroid/media/MediaFileEx$PrivateAccess;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;
    .registers 3
    .param p0, "ajc$aspectInstance"    # Landroid/media/MediaFileEx$PrivateAccess;
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 201
    invoke-static {}, Landroid/media/MediaFile;->ajc$get$sFileTypeMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private static final sFileTypeToFormatMap_aroundBody2()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 47
    invoke-static {}, Landroid/media/MediaFileEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sFileTypeToFormatMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private static final sFileTypeToFormatMap_aroundBody3$advice(Landroid/media/MediaFileEx$PrivateAccess;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;
    .registers 3
    .param p0, "ajc$aspectInstance"    # Landroid/media/MediaFileEx$PrivateAccess;
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 206
    invoke-static {}, Landroid/media/MediaFile;->ajc$get$sFileTypeToFormatMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private static final sFormatToMimeTypeMap_aroundBody6()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 49
    invoke-static {}, Landroid/media/MediaFileEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sFormatToMimeTypeMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private static final sFormatToMimeTypeMap_aroundBody7$advice(Landroid/media/MediaFileEx$PrivateAccess;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;
    .registers 3
    .param p0, "ajc$aspectInstance"    # Landroid/media/MediaFileEx$PrivateAccess;
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 216
    invoke-static {}, Landroid/media/MediaFile;->ajc$get$sFormatToMimeTypeMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private static final sMimeTypeToFormatMap_aroundBody4()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 48
    invoke-static {}, Landroid/media/MediaFileEx$PrivateAccess;->ajc$interFieldGetDispatch$android_media_MediaFileEx$PrivateAccess$android_media_MediaFileEx$sMimeTypeToFormatMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private static final sMimeTypeToFormatMap_aroundBody5$advice(Landroid/media/MediaFileEx$PrivateAccess;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/util/HashMap;
    .registers 3
    .param p0, "ajc$aspectInstance"    # Landroid/media/MediaFileEx$PrivateAccess;
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 211
    invoke-static {}, Landroid/media/MediaFile;->ajc$get$sMimeTypeToFormatMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
