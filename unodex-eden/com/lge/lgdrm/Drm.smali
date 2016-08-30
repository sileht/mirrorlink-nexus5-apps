.class public final Lcom/lge/lgdrm/Drm;
.super Ljava/lang/Object;
.source "Drm.java"


# static fields
.field protected static final ACCESS_LGDRM_PERM:Ljava/lang/String; = "android.permission.ACCESS_LGDRM"

.field public static final ACTION_DRM_ACTIVATE_CONTENT:Ljava/lang/String; = "com.lge.lgdrm.action.DRM_ACTIVATION"

.field public static final ACTION_DRM_LGU_ACTIVATE_CONTENT:Ljava/lang/String; = "com.lge.lgdrm.action.DRM_LGU_ACTIVATION"

.field public static final ACTION_DRM_LGU_UPDATE_WAIT_RESULT:Ljava/lang/String; = "com.lge.lgdrm.action.DRM_LGU_PROCESS_RESULT"

.field public static final ACTION_DRM_NOTIFICATION_DELETED:Ljava/lang/String; = "com.lge.lgdrm.action.NOTIFICATION_DELETED"

.field public static final ACTION_DRM_NOTIFICATION_SELECTED:Ljava/lang/String; = "com.lge.lgdrm.action.NOTIFICATION_SELECTED"

.field public static final ACTION_DRM_RIGHTS_RECEIVED:Ljava/lang/String; = "com.lge.lgdrm.action.RIGHTS_RECEIVED"

.field public static final ACTION_DRM_SYNC_TIME:Ljava/lang/String; = "com.lge.lgdrm.action.DRM_SYNC_TIME"

.field public static final ACTION_DRM_UPDATE_STATE:Ljava/lang/String; = "com.lge.lgdrm.action.UPDATE_DRM_STATE"

.field public static final ACTION_DRM_UPDATE_WAIT_RESULT:Ljava/lang/String; = "com.lge.lgdrm.action.DRM_PROCESS_RESULT"

.field public static final AGENT_CFM:I = 0x3

.field public static final AGENT_DIVX:I = 0x6

.field public static final AGENT_INFO_MODTIME:I = 0x1

.field public static final AGENT_INFO_SYSTEM_ID:I = 0x2

.field public static final AGENT_INFO_VERSION:I = 0x0

.field public static final AGENT_LGU:I = 0x9

.field protected static final AGENT_MAX:I = 0xf

.field public static final AGENT_OMA_V1:I = 0x1

.field public static final AGENT_OMA_V1_CD:I = 0xd

.field public static final AGENT_OMA_V1_FL:I = 0xb

.field public static final AGENT_OMA_V1_FL_AUTO:I = 0xc

.field public static final AGENT_OMA_V1_SD:I = 0xe

.field public static final AGENT_OMA_V2:I = 0x2

.field public static final AGENT_PLAYREADY:I = 0x7

.field public static final AGENT_SKT:I = 0xa

.field public static final AGENT_SRM:I = 0x8

.field public static final AGENT_WM:I = 0x5

.field public static final APP_DLD_BCAST_CLIENT:I = 0x5

.field public static final APP_DLD_BROWSER:I = 0x1

.field public static final APP_DLD_DLA_CLIENT:I = 0x4

.field public static final APP_DLD_OTHERS:I = 0x6

.field public static final APP_DLD_ROAP_CLIENT:I = 0x3

.field public static final APP_DLD_WAPPUSH:I = 0x2

.field public static final BCAST_KEY_LEN:I = 0x10

.field public static final CERT_INFO_ISSUER_NAME:I = 0x1

.field public static final CERT_INFO_TYPE:I = 0x2

.field protected static final CERT_MGR_GET_INDEX:I = 0x7

.field protected static final CERT_MGR_IS_TESTSET:I = 0x2

.field protected static final CERT_MGR_LOAD_ONDEMAND:I = 0x4

.field protected static final CERT_MGR_LOAD_PRESET:I = 0x3

.field protected static final CERT_MGR_RESET:I = 0x5

.field protected static final CERT_MGR_SET_INDEX:I = 0x6

.field protected static final CERT_MGR_VERIFY:I = 0x1

.field public static final CERT_WRITE_DEV:I = 0x3

.field public static final CERT_WRITE_DEVCA:I = 0x2

.field public static final CERT_WRITE_DEVPKEY:I = 0x4

.field public static final CERT_WRITE_ROOT:I = 0x1

.field public static final CONSTRAINT_ACCUMULATED:I = 0x5

.field public static final CONSTRAINT_COUNT:I = 0x1

.field public static final CONSTRAINT_DATETIME:I = 0x2

.field public static final CONSTRAINT_INDIVIDUAL:I = 0x6

.field public static final CONSTRAINT_INTERVAL:I = 0x3

.field protected static final CONSTRAINT_MAX:I = 0x8

.field public static final CONSTRAINT_NONE:I = 0x0

.field public static final CONSTRAINT_SYSTEM:I = 0x7

.field public static final CONSTRAINT_TIMEDCOUNT:I = 0x4

.field public static final CONTENT_ACT_FORWARD:I = 0x1

.field public static final CONTENT_ACT_META_EIDT:I = 0xf

.field public static final CONTENT_ACT_RIGHT_RENEWAL:I = 0x7

.field public static final CONTENT_ACT_RIGHT_SELECTION:I = 0x6

.field public static final CONTENT_ACT_RIGHT_UPLOAD:I = 0x8

.field public static final CONTENT_ACT_RINGTONE:I = 0x2

.field public static final CONTENT_ACT_TIME_SYNC:I = 0x5

.field public static final CONTENT_ACT_TV_OUT:I = 0x4

.field public static final CONTENT_ACT_WALLPAPER:I = 0x3

.field public static final CONTENT_INFO_CID:I = 0x3

.field public static final CONTENT_INFO_CONTENT_URL:I = 0x5

.field public static final CONTENT_INFO_EXTENSION:I = 0x2

.field public static final CONTENT_INFO_MIME:I = 0x1

.field public static final CONTENT_INFO_RI_URL:I = 0x4

.field public static final CONTENT_INFO_TTID:I = 0x6

.field public static final CONTENT_METAINFO_ALBM:I = 0x8

.field public static final CONTENT_METAINFO_AUTHOR:I = 0x5

.field public static final CONTENT_METAINFO_CLSF:I = 0x7

.field public static final CONTENT_METAINFO_COPYR:I = 0x3

.field public static final CONTENT_METAINFO_COVERURI:I = 0xa

.field public static final CONTENT_METAINFO_DESC:I = 0x2

.field public static final CONTENT_METAINFO_DURATION:I = 0xd

.field public static final CONTENT_METAINFO_GNRE:I = 0x6

.field public static final CONTENT_METAINFO_LYRICS:I = 0xb

.field protected static final CONTENT_METAINFO_MAX:I = 0xe

.field public static final CONTENT_METAINFO_NONE:I = 0x0

.field public static final CONTENT_METAINFO_PERF:I = 0x4

.field public static final CONTENT_METAINFO_TITLE:I = 0x1

.field public static final CONTENT_METAINFO_TRACK:I = 0xc

.field public static final CONTENT_METAINFO_YRRC:I = 0x9

.field public static final CONTENT_TYPE_CD:I = 0x51

.field public static final CONTENT_TYPE_CFM:I = 0x8001

.field public static final CONTENT_TYPE_DCF:I = 0x100

.field public static final CONTENT_TYPE_DCFV2:I = 0x3000

.field public static final CONTENT_TYPE_DIVX:I = 0x80000

.field public static final CONTENT_TYPE_DM:I = 0x10

.field public static final CONTENT_TYPE_FL:I = 0x31

.field public static final CONTENT_TYPE_FLLCK:I = 0x91

.field public static final CONTENT_TYPE_FLSD:I = 0x301

.field public static final CONTENT_TYPE_LGU:I = 0x1800

.field public static final CONTENT_TYPE_NOFW:I = 0x1

.field public static final CONTENT_TYPE_NOTDRM:I = 0x0

.field public static final CONTENT_TYPE_ODF:I = 0x1000

.field public static final CONTENT_TYPE_PDCF:I = 0x5000

.field public static final CONTENT_TYPE_PR_ENY:I = 0x800000

.field public static final CONTENT_TYPE_PR_PMF:I = 0x100000

.field public static final CONTENT_TYPE_PR_PYA:I = 0x300000

.field public static final CONTENT_TYPE_PR_PYV:I = 0x500000

.field public static final CONTENT_TYPE_SD:I = 0x300

.field public static final CONTENT_TYPE_SDWARN:I = 0x302

.field public static final CONTENT_TYPE_SKT:I = 0x501

.field public static final CONTENT_TYPE_WARNFW:I = 0x2

.field public static final CONTENT_TYPE_WMA:I = 0x30000

.field public static final CONTENT_TYPE_WMDRM:I = 0x10000

.field public static final CONTENT_TYPE_WMV:I = 0x50000

.field public static final DBG_DATA_CLEAR:I = 0x1

.field public static final DBG_DATA_DUMP_DM:I = 0x1000

.field public static final DBG_DATA_DUMP_IMSI:I = 0x4000

.field public static final DBG_DATA_DUMP_RELV1:I = 0x800

.field public static final DBG_DATA_DUMP_ROAP:I = 0x400

.field public static final DBG_DATA_DUMP_SEED:I = 0x2000

.field public static final DBG_DATA_DUMP_SRM:I = 0x8000

.field public static final DBG_DATA_FETCH_SILENT:I = 0x100000

.field public static final DBG_DATA_FSCOUNT:I = 0x200000

.field public static final DBG_DATA_LEAVEMETDB:I = 0x20000

.field public static final DBG_DATA_LOG_HIGH:I = 0x8

.field public static final DBG_DATA_LOG_LOW:I = 0x2

.field public static final DBG_DATA_LOG_MID:I = 0x4

.field public static final DBG_DATA_MKROAMING:I = 0x10000

.field public static final DBG_DATA_MULTI_OCSP:I = 0x40000

.field public static final DBG_DATA_PERF_API:I = 0x10

.field public static final DBG_DATA_PERF_DBMS:I = 0x40

.field public static final DBG_DATA_PERF_SEC:I = 0x20

.field public static final DBG_DATA_PERF_WBXML:I = 0x200

.field public static final DBG_DATA_PERF_XML:I = 0x80

.field public static final DBG_DATA_PERF_XMLWR:I = 0x100

.field public static final DBG_DATA_TRTRACKING:I = 0x80000

.field public static final DBG_OP_CFG:I = 0x0

.field public static final DBG_OP_CONNECT_URL:I = 0x8

.field public static final DBG_OP_DB_CHANGE_DBMS:I = 0x5

.field public static final DBG_OP_DB_RIGHTS_DUMP:I = 0x3

.field public static final DBG_OP_DB_RIGHTS_RESTORE:I = 0x4

.field public static final DBG_OP_DB_TR_END:I = 0x7

.field public static final DBG_OP_DB_TR_START:I = 0x6

.field public static final DBG_OP_HEAP_USAGE:I = 0x9

.field public static final DBG_OP_PROFILE_START:I = 0x1

.field public static final DBG_OP_PROFILE_STOP:I = 0x2

.field public static final DBOP_CLEAN_BCAST:I = 0x6

.field public static final DBOP_CLOSE_DBMS:I = 0xa

.field public static final DBOP_CLOSE_HDS:I = 0x8

.field public static final DBOP_INIT_HDS:I = 0x7

.field public static final DBOP_MAX:I = 0x10

.field public static final DBOP_PRELOAD_RIGHT:I = 0x9

.field public static final DBOP_RESET_BCAST:I = 0x5

.field public static final DBOP_RESET_DOMAIN:I = 0x1

.field public static final DBOP_RESET_FACTORY:I = 0x0

.field public static final DBOP_RESET_LGURIGHTS:I = 0xf

.field public static final DBOP_RESET_METER:I = 0x4

.field public static final DBOP_RESET_RI:I = 0x2

.field public static final DBOP_RESET_RIGHTS:I = 0x3

.field public static final DRM_CATEGORY_AUDIO:Ljava/lang/String; = "com.lge.lgdrm.AUDIO_CATEGORY"

.field public static final DRM_CATEGORY_GAME:Ljava/lang/String; = "com.lge.lgdrm.GAME_CATEGORY"

.field public static final DRM_CATEGORY_IMAGE:Ljava/lang/String; = "com.lge.lgdrm.IMAGE_CATEGORY"

.field public static final DRM_CATEGORY_VIDEO:Ljava/lang/String; = "com.lge.lgdrm.VIDEO_CATEGORY"

.field public static final DRM_VERSION:Ljava/lang/String; = "5.1.0"

.field public static final ERR_CERT_ALREADY_EXIST:I = 0x5

.field public static final ERR_CERT_MISMATCH:I = 0x4

.field public static final ERR_CERT_VERIFY:I = 0x3

.field public static final ERR_FAILURE:I = -0x1

.field protected static final ERR_LGDRM_PERM:Ljava/lang/String; = "Need proper permission to access drm"

.field public static final ERR_OUT_OF_STORAGE:I = 0x1

.field public static final ERR_SUCCESS:I = 0x0

.field public static final ERR_UNSUPPORTED_RIGHT:I = 0x2

.field public static final EXTRA_ACTIVATION_URL:Ljava/lang/String; = "com.lge.lgdrm.extra.ACTIVATION_URL"

.field public static final EXTRA_CID:Ljava/lang/String; = "com.lge.lgdrm.extra.CID"

.field public static final EXTRA_CONTENT_ACTION:Ljava/lang/String; = "com.lge.lgdrm.extra.ACTION"

.field public static final EXTRA_CONTENT_TYPE:Ljava/lang/String; = "com.lge.lgdrm.extra.CONTENT_TYPE"

.field public static final EXTRA_DRM_TYPE:Ljava/lang/String; = "com.lge.lgdrm.extra.DRM_TYPE"

.field public static final EXTRA_FILE_NAME:Ljava/lang/String; = "com.lge.lgdrm.extra.FILE_NAME"

.field public static final EXTRA_RECEIVER_NAME:Ljava/lang/String; = "com.lge.lgdrm.extra.RECEIVER_NAME"

.field public static final EXTRA_WAIT_ERR_CODE:Ljava/lang/String; = "com.lge.lgdrm.extra.WAIT_ERR_CODE"

.field public static final EXTRA_WAIT_RESULT:Ljava/lang/String; = "com.lge.lgdrm.extra.WAIT_RESULT"

.field public static final EXTRA_WAIT_TYPE:Ljava/lang/String; = "com.lge.lgdrm.extra.WAIT_TYPE"

.field public static final FORMAT_CD:I = 0x3

.field public static final FORMAT_DCF:I = 0x4

.field public static final FORMAT_DR:I = 0x5

.field public static final FORMAT_DRC:I = 0x6

.field public static final FORMAT_DRM2:I = 0xa

.field public static final FORMAT_FL:I = 0x1

.field public static final FORMAT_FLSD:I = 0x2

.field public static final FORMAT_NOTDRM:I = 0x0

.field public static final FORMAT_ODF:I = 0x7

.field public static final FORMAT_ORO:I = 0x8

.field public static final FORMAT_ROAP:I = 0x9

.field public static final FORMAT_UNKOWN:I = -0x1

.field public static LGDRM:Z = false

.field public static final MEDIA_TYPE_AUDIO:I = 0x2

.field public static final MEDIA_TYPE_FLASH:I = 0x5

.field public static final MEDIA_TYPE_GAME:I = 0x4

.field public static final MEDIA_TYPE_IMAGE:I = 0x1

.field public static final MEDIA_TYPE_SVG:I = 0x6

.field public static final MEDIA_TYPE_UNKNOWN:I = 0x0

.field public static final MEDIA_TYPE_VIDEO:I = 0x3

.field public static final MIME_DCF:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field public static final MIME_DM:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field public static final MIME_DR:Ljava/lang/String; = "application/vnd.oma.drm.rights+xml"

.field public static final MIME_DRC:Ljava/lang/String; = "application/vnd.oma.drm.rights+wbxml"

.field public static final MIME_MP:Ljava/lang/String; = "multipart/related"

.field public static final MIME_ODF:Ljava/lang/String; = "application/vnd.oma.drm.dcf"

.field public static final MIME_ORO:Ljava/lang/String; = "application/vnd.oma.drm.ro+xml"

.field public static final MIME_ORT:Ljava/lang/String; = "application/vnd.oma.drm.roap-trigger+xml"

.field public static final MIME_ORU:Ljava/lang/String; = "application/vnd.oma.drm.roap-pdu+xml"

.field public static final MIME_PR_INITIATOR:Ljava/lang/String; = "application/vnd.ms-playready.initiator+xml"

.field public static final MIME_PR_PYA:Ljava/lang/String; = "audio/vnd.ms-playrready.media.pya"

.field public static final MIME_PR_PYV:Ljava/lang/String; = "video/vnd.ms-playrready.media.pyv"

.field public static final MIME_PR_TEXTXML:Ljava/lang/String; = "text/xml"

.field public static final MIME_SRM:Ljava/lang/String; = "application/vnd.oma.drm.srm-pdu"

.field public static final MIME_URL_ENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final MIME_WBORT:Ljava/lang/String; = "application/vnd.oma.drm.roap-trigger+wbxml"

.field public static final OBJINOF_FILENAME:I = 0x2

.field public static final OBJINOF_MIME:I = 0x1

.field public static final PERMISSION_ACCESS:I = 0x40

.field public static final PERMISSION_DISPLAY:I = 0x2

.field public static final PERMISSION_EXECUTE:I = 0x4

.field public static final PERMISSION_EXPORT:I = 0x30

.field public static final PERMISSION_MOVE:I = 0x80

.field protected static final PERMISSION_NONE:I = 0x0

.field public static final PERMISSION_PLAY:I = 0x1

.field public static final PERMISSION_PRINT:I = 0x8

.field public static final PROC_ATTR_CLKSYNCPET:I = 0x10

.field public static final PROC_ATTR_CLKSYNCRESP:I = 0x20

.field public static final PROC_ATTR_NONE:I = 0x0

.field public static final PROC_ATTR_NO_FW:I = 0x1

.field public static final PROC_ATTR_NO_RINGTONE:I = 0x2

.field public static final PROC_ATTR_NO_SCREEN:I = 0x4

.field public static final PROC_ATTR_PRELOAD:I = 0x40

.field public static final PROC_ATTR_SOAP:I = 0x8

.field public static final PROC_FAIL_DOMAIN_FULL:I = 0x1

.field public static final PROC_FAIL_INFO_MESSAGE:I = 0x1

.field public static final PROC_FAIL_INFO_REDIRECT_URL:I = 0x2

.field public static final PROC_FAIL_OUT_OF_STORAGE:I = 0x5

.field public static final PROC_FAIL_ROAP:I = 0x2

.field public static final PROC_FAIL_RO_CORRUPTED:I = 0x3

.field public static final PROC_FAIL_SOAPFAULT:I = 0x4

.field public static final PROC_FAIL_UNKNOWN:I = 0x0

.field public static final PROC_REQERR_CONNECT:I = 0x2

.field public static final PROC_REQERR_HTTP_404:I = 0x1

.field public static final PROC_REQERR_INTERNAL:I = 0x3

.field public static final PROC_REQERR_NONE:I = 0x0

.field public static final PROC_RESP_AGREE:I = 0x2

.field public static final PROC_RESP_CANCEL:I = 0x1

.field public static final PROC_RESP_DISAGREE:I = 0x3

.field public static final PROC_RESULT_ERROR:I = -0x1

.field public static final PROC_RESULT_NOT_DOMAIN_MEMBER:I = 0x2

.field public static final PROC_RESULT_RECV_RO:I = 0x3

.field public static final PROC_RESULT_ROAP:I = 0x1

.field public static final PROC_RESULT_SUCCESS:I = 0x0

.field public static final PROC_RESULT_WAIT_NEXT_REQ:I = 0x4

.field public static final PROC_STATUS_CONFIRM:I = 0x2

.field public static final PROC_STATUS_CONFIRM_WAIT:I = 0x3

.field public static final PROC_STATUS_ERROR:I = -0x1

.field public static final PROC_STATUS_SUCCESS:I = 0x0

.field public static final PROC_STATUS_WAIT:I = 0x1

.field public static final RIGHT_OBTAIN_BY_ACTIVATE_URL:I = 0x1

.field public static final RIGHT_OBTAIN_BY_ONEXPIRED_URL:I = 0x3

.field public static final RIGHT_OBTAIN_BY_PREVIEW_URL:I = 0x2

.field public static final RIGHT_STATE_CORRUPTED:I = 0xd

.field public static final RIGHT_STATE_EXPIRED:I = -0x2

.field public static final RIGHT_STATE_FAILURE:I = -0x1

.field public static final RIGHT_STATE_HDS_MISMATCH:I = 0xe

.field public static final RIGHT_STATE_HDS_NOT_EXIST:I = 0xf

.field protected static final RIGHT_STATE_INIT:I = -0x4

.field public static final RIGHT_STATE_INVALID:I = 0x1

.field public static final RIGHT_STATE_INVALIDSIM:I = 0x3

.field public static final RIGHT_STATE_MEMSTOREFULL:I = -0x3

.field public static final RIGHT_STATE_METERCONSENT:I = 0x9

.field public static final RIGHT_STATE_METERCONSENTORUSE:I = 0xa

.field public static final RIGHT_STATE_NOTREADY:I = 0x4

.field public static final RIGHT_STATE_ONEXPIREDURL:I = 0xb

.field public static final RIGHT_STATE_ROAMINGURL:I = 0x7

.field public static final RIGHT_STATE_SYNCCLK:I = 0x8

.field public static final RIGHT_STATE_TRUSTEDURL:I = 0x5

.field public static final RIGHT_STATE_UNAUTHORIZED:I = 0xc

.field public static final RIGHT_STATE_UNRELIABLEURL:I = 0x6

.field public static final RIGHT_STATE_VALID:I = 0x0

.field protected static final RIGHT_UPLOAD:I = 0x4

.field public static final SUMMARY_USE_LEFT:I = 0x2

.field public static final SUMMARY_VALID_FOR:I = 0x1

.field public static final WAIT_ERR_CODE_AIRPLANE:I = 0x2

.field public static final WAIT_ERR_CODE_CANCELED:I = 0x1

.field public static final WAIT_ERR_CODE_NONE:I = 0x0

.field public static final WAIT_RESULT_CONNERR:I = 0x2

.field public static final WAIT_RESULT_ERROR:I = 0x3

.field public static final WAIT_RESULT_SUCCESS:I = 0x1

.field public static final WAIT_TYPE_ONEXPIRED:I = 0x5

.field public static final WAIT_TYPE_PREVIEW:I = 0x2

.field public static final WAIT_TYPE_ROAP:I = 0x1

.field public static final WAIT_TYPE_ROPUSH:I = 0x0

.field public static final WAIT_TYPE_ROUPLOAD:I = 0x3

.field public static final WAIT_TYPE_TIMESYNC:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    sput-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    .line 1667
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-eqz v0, :cond_d

    .line 1668
    const-string v0, "lgdrm_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1670
    :cond_d
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method
