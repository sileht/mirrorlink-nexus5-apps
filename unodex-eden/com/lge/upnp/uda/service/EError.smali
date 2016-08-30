.class public Lcom/lge/upnp/uda/service/EError;
.super Ljava/lang/Object;
.source "EError.java"


# static fields
.field public static final E_UPNP_CANCEL:I = 0x3

.field public static final E_UPNP_DEVICE_FOUND:I = 0x2336

.field public static final E_UPNP_DEV_ADV_EXPIRED_ERR:I = 0x232e

.field public static final E_UPNP_FALSE:I = 0x2

.field public static final E_UPNP_HD_HTTP_VER_NOT_SUPPORTED:I = 0x1f5

.field public static final E_UPNP_HD_METHOD_NOT_ALLOWED:I = 0x195

.field public static final E_UPNP_HTTP_200_OK:I = 0xc8

.field public static final E_UPNP_HTTP_400_ERR:I = 0x190

.field public static final E_UPNP_HTTP_401_ERR:I = 0x191

.field public static final E_UPNP_HTTP_402_ERR:I = 0x192

.field public static final E_UPNP_HTTP_408_ERR:I = 0x198

.field public static final E_UPNP_HTTP_501_ERR:I = 0x1f5

.field public static final E_UPNP_HTTP_600_ERR:I = 0x258

.field public static final E_UPNP_HTTP_601_ERR:I = 0x259

.field public static final E_UPNP_HTTP_602_ERR:I = 0x25a

.field public static final E_UPNP_HTTP_603_ERR:I = 0x25b

.field public static final E_UPNP_HTTP_604_ERR:I = 0x25c

.field public static final E_UPNP_HTTP_605_ERR:I = 0x25d

.field public static final E_UPNP_HTTP_606_ERR:I = 0x25e

.field public static final E_UPNP_HTTP_607_ERR:I = 0x25f

.field public static final E_UPNP_HTTP_608_ERR:I = 0x260

.field public static final E_UPNP_HTTP_609_ERR:I = 0x261

.field public static final E_UPNP_HTTP_610_ERR:I = 0x262

.field public static final E_UPNP_HTTP_611_ERR:I = 0x263

.field public static final E_UPNP_HTTP_612_ERR:I = 0x264

.field public static final E_UPNP_HTTP_DATA_TRANSFER_COMPLETED:I = 0x2334

.field public static final E_UPNP_HTTP_DATA_TRANSFER_PROGRESS:I = 0x2333

.field public static final E_UPNP_HTTP_FILE_NOT_FOUND:I = 0x2335

.field public static final E_UPNP_HTTP_UNKNOWN_ERR:I = 0x2bc

.field public static final E_UPNP_INTERNAL_CP_ERR:I = 0x1388

.field public static final E_UPNP_INTERNAL_ERR:I = 0x2328

.field public static final E_UPNP_INTERNAL_GENA_ERR:I = 0xfa0

.field public static final E_UPNP_INTERNAL_HD_ERR:I = 0x1770

.field public static final E_UPNP_INTERNAL_HTTP_ERR:I = 0x3e8

.field public static final E_UPNP_INTERNAL_SOAP_ERR:I = 0xbb8

.field public static final E_UPNP_INTERNAL_SSDP_ERR:I = 0x7d0

.field public static final E_UPNP_NO_ERR:I = 0x0

.field public static final E_UPNP_RENEW_SUBSCRIBE_FAILED:I = 0x138a

.field public static final E_UPNP_RSP_TIME_OUT:I = 0x2329

.field public static final E_UPNP_RX_NOTIFIER_FAILED:I = 0x2332

.field public static final E_UPNP_SEARCH_RESP:I = 0x1389

.field public static final E_UPNP_SOAP_401_ERR:I = 0x191

.field public static final E_UPNP_SOAP_404_ERR:I = 0x194

.field public static final E_UPNP_SOAP_600_624_ERR:I = 0x270

.field public static final E_UPNP_SOAP_625_649_ERR:I = 0x289

.field public static final E_UPNP_SOAP_650_674_ERR:I = 0x2a2

.field public static final E_UPNP_SOAP_675_699_ERR:I = 0x2bb

.field public static final E_UPNP_SOAP_UNKNOWN_ERR:I = 0x320

.field public static final E_UPNP_SOCK_ERROR:I = 0x232a

.field public static final E_UPNP_SOCK_LISTEN_FAILED:I = 0x232d

.field public static final E_UPNP_SOCK_OPEN_FAILED:I = 0x232c

.field public static final E_UPNP_SOCK_READ_ERROR:I = 0x232b

.field public static final E_UPNP_TRUE:I = 0x1


# instance fields
.field private m_val:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/upnp/uda/service/EError;->m_val:I

    .line 326
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "val"    # I

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput p1, p0, Lcom/lge/upnp/uda/service/EError;->m_val:I

    .line 320
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .prologue
    .line 310
    iget v0, p0, Lcom/lge/upnp/uda/service/EError;->m_val:I

    return v0
.end method

.method public setErrorCode(I)V
    .registers 2
    .param p1, "val"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/lge/upnp/uda/service/EError;->m_val:I

    .line 302
    return-void
.end method
