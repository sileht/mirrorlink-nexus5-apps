.class public final enum Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;
.super Ljava/lang/Enum;
.source "IHttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/upnp/uda/http/IHttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HTTP_RESPONSE_HEADERS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;

.field public static final enum HTTP_RESPONSE_SERVER:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;

.field public static final enum HTTP_RESPONSE_TRANSFER_ENCODING:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;


# instance fields
.field m_val:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 247
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;

    const-string v1, "HTTP_RESPONSE_SERVER"

    .line 250
    const-string v2, "Server"

    invoke-direct {v0, v1, v3, v2}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;->HTTP_RESPONSE_SERVER:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;

    .line 251
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;

    const-string v1, "HTTP_RESPONSE_TRANSFER_ENCODING"

    .line 254
    const-string v2, "Transfer-Encoding"

    invoke-direct {v0, v1, v4, v2}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;->HTTP_RESPONSE_TRANSFER_ENCODING:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;

    .line 246
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;->HTTP_RESPONSE_SERVER:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;->HTTP_RESPONSE_TRANSFER_ENCODING:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;->ENUM$VALUES:[Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "val"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 264
    iput-object p3, p0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;->m_val:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;

    return-object v0
.end method

.method public static values()[Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;->ENUM$VALUES:[Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method protected GetValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;->m_val:Ljava/lang/String;

    return-object v0
.end method
