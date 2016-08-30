.class public final enum Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;
.super Ljava/lang/Enum;
.source "IHttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/upnp/uda/http/IHttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HTTP_CONTENT_HEADERS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

.field public static final enum E_HTTP_CONTENT_ENCODING:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

.field public static final enum E_HTTP_CONTENT_LANGUAGE:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

.field public static final enum E_HTTP_CONTENT_LENGTH:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

.field public static final enum E_HTTP_CONTENT_LOCATION:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

.field public static final enum E_HTTP_CONTENT_TRANSFER_ENCODING:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

.field public static final enum E_HTTP_CONTENT_TYPE:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

.field public static final enum E_HTTP_LAST_MODIFIED:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 206
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    const-string v1, "E_HTTP_CONTENT_ENCODING"

    invoke-direct {v0, v1, v3}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;-><init>(Ljava/lang/String;I)V

    .line 209
    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;->E_HTTP_CONTENT_ENCODING:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    .line 210
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    const-string v1, "E_HTTP_CONTENT_LANGUAGE"

    invoke-direct {v0, v1, v4}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;-><init>(Ljava/lang/String;I)V

    .line 213
    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;->E_HTTP_CONTENT_LANGUAGE:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    .line 214
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    const-string v1, "E_HTTP_CONTENT_LENGTH"

    invoke-direct {v0, v1, v5}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;-><init>(Ljava/lang/String;I)V

    .line 217
    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;->E_HTTP_CONTENT_LENGTH:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    .line 218
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    const-string v1, "E_HTTP_CONTENT_LOCATION"

    invoke-direct {v0, v1, v6}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;-><init>(Ljava/lang/String;I)V

    .line 221
    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;->E_HTTP_CONTENT_LOCATION:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    .line 222
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    const-string v1, "E_HTTP_CONTENT_TYPE"

    invoke-direct {v0, v1, v7}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;-><init>(Ljava/lang/String;I)V

    .line 225
    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;->E_HTTP_CONTENT_TYPE:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    .line 226
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    const-string v1, "E_HTTP_LAST_MODIFIED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;-><init>(Ljava/lang/String;I)V

    .line 229
    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;->E_HTTP_LAST_MODIFIED:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    .line 230
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    const-string v1, "E_HTTP_CONTENT_TRANSFER_ENCODING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;-><init>(Ljava/lang/String;I)V

    .line 233
    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;->E_HTTP_CONTENT_TRANSFER_ENCODING:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    .line 205
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;->E_HTTP_CONTENT_ENCODING:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;->E_HTTP_CONTENT_LANGUAGE:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;->E_HTTP_CONTENT_LENGTH:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;->E_HTTP_CONTENT_LOCATION:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;->E_HTTP_CONTENT_TYPE:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;->E_HTTP_LAST_MODIFIED:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;->E_HTTP_CONTENT_TRANSFER_ENCODING:Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;->ENUM$VALUES:[Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    return-object v0
.end method

.method public static values()[Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;->ENUM$VALUES:[Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
