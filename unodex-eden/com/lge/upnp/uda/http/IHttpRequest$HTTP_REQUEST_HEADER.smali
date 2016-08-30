.class public final enum Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;
.super Ljava/lang/Enum;
.source "IHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/upnp/uda/http/IHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HTTP_REQUEST_HEADER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

.field public static final enum HTTP_REQUEST_HEADER_ACCEPT:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

.field public static final enum HTTP_REQUEST_HEADER_ACCEPT_LANGUAGE:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

.field public static final enum HTTP_REQUEST_HEADER_CACHE_CONTROL:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

.field public static final enum HTTP_REQUEST_HEADER_CONNECTION:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

.field public static final enum HTTP_REQUEST_HEADER_EXPECT:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

.field public static final enum HTTP_REQUEST_HEADER_HOST:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

.field public static final enum HTTP_REQUEST_HEADER_LOCATION:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

.field public static final enum HTTP_REQUEST_HEADER_PRAGMA:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

.field public static final enum HTTP_REQUEST_HEADER_RANGE:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

.field public static final enum HTTP_REQUEST_HEADER_USER_AGENT:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;


# instance fields
.field private m_val:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 215
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    const-string v1, "HTTP_REQUEST_HEADER_ACCEPT"

    .line 218
    invoke-direct {v0, v1, v4, v4}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_ACCEPT:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    .line 219
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    const-string v1, "HTTP_REQUEST_HEADER_ACCEPT_LANGUAGE"

    .line 222
    invoke-direct {v0, v1, v5, v5}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_ACCEPT_LANGUAGE:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    .line 223
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    const-string v1, "HTTP_REQUEST_HEADER_CACHE_CONTROL"

    .line 226
    invoke-direct {v0, v1, v6, v6}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_CACHE_CONTROL:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    .line 227
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    const-string v1, "HTTP_REQUEST_HEADER_CONNECTION"

    .line 230
    invoke-direct {v0, v1, v7, v7}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_CONNECTION:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    .line 231
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    const-string v1, "HTTP_REQUEST_HEADER_HOST"

    .line 234
    invoke-direct {v0, v1, v8, v8}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_HOST:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    .line 235
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    const-string v1, "HTTP_REQUEST_HEADER_PRAGMA"

    const/4 v2, 0x5

    .line 238
    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_PRAGMA:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    .line 239
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    const-string v1, "HTTP_REQUEST_HEADER_USER_AGENT"

    const/4 v2, 0x6

    .line 242
    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_USER_AGENT:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    .line 243
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    const-string v1, "HTTP_REQUEST_HEADER_LOCATION"

    const/4 v2, 0x7

    .line 246
    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_LOCATION:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    .line 247
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    const-string v1, "HTTP_REQUEST_HEADER_RANGE"

    const/16 v2, 0x8

    .line 250
    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_RANGE:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    .line 251
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    const-string v1, "HTTP_REQUEST_HEADER_EXPECT"

    const/16 v2, 0x9

    .line 254
    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_EXPECT:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    .line 213
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_ACCEPT:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_ACCEPT_LANGUAGE:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_CACHE_CONTROL:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_CONNECTION:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_HOST:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_PRAGMA:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_USER_AGENT:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_LOCATION:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_RANGE:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->HTTP_REQUEST_HEADER_EXPECT:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->ENUM$VALUES:[Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "val"    # I

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 264
    iput p3, p0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->m_val:I

    .line 265
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    return-object v0
.end method

.method public static values()[Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->ENUM$VALUES:[Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method protected getVal()I
    .registers 2

    .prologue
    .line 273
    iget v0, p0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;->m_val:I

    return v0
.end method
