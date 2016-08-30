.class public Lcom/lge/upnp/uda/service/TraceService;
.super Ljava/lang/Object;
.source "TraceService.java"


# static fields
.field public static final ALL_TRACE:I = 0xff

.field public static final DEBUG_TRACE:I = 0x44

.field public static final ERROR_TRACE:I = 0x45

.field public static final INFO_TRACE:I = 0x49

.field public static final TEXT_ANY:I = 0x0

.field public static final TEXT_GENA:I = 0x4

.field public static final TEXT_HTTP:I = 0x1

.field public static final TEXT_SOAP:I = 0x3

.field public static final TEXT_SSDP:I = 0x2

.field public static final TEXT_XML:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableTrace(I)V
    .registers 2
    .param p1, "traceCategory"    # I

    .prologue
    .line 79
    invoke-static {p1}, Lcom/lge/upnp/uda/service/JNITraceService;->DisableTrace(I)V

    .line 80
    return-void
.end method

.method public enableTrace(I)V
    .registers 2
    .param p1, "traceCategory"    # I

    .prologue
    .line 69
    invoke-static {p1}, Lcom/lge/upnp/uda/service/JNITraceService;->EnableTrace(I)V

    .line 70
    return-void
.end method

.method public getCompileDateTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    invoke-static {}, Lcom/lge/upnp/uda/service/JNITraceService;->GetCompileDateTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
