.class public final enum Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;
.super Ljava/lang/Enum;
.source "IHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/upnp/uda/http/IHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HTTP_REQUEST_METHODS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

.field public static final enum HTTP_REQUEST_GET:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

.field public static final enum HTTP_REQUEST_HEAD:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

.field public static final enum HTTP_REQUEST_MSEARCH:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

.field public static final enum HTTP_REQUEST_M_POST:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

.field public static final enum HTTP_REQUEST_NOTIFY:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

.field public static final enum HTTP_REQUEST_POST:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

.field public static final enum HTTP_REQUEST_SUBSCRIBE:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

.field public static final enum HTTP_REQUEST_UNSUBSCRIBE:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;


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

    .line 142
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    const-string v1, "HTTP_REQUEST_GET"

    .line 145
    invoke-direct {v0, v1, v4, v4}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_GET:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    .line 146
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    const-string v1, "HTTP_REQUEST_POST"

    .line 149
    invoke-direct {v0, v1, v5, v5}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_POST:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    .line 150
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    const-string v1, "HTTP_REQUEST_M_POST"

    .line 153
    invoke-direct {v0, v1, v6, v6}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_M_POST:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    .line 154
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    const-string v1, "HTTP_REQUEST_NOTIFY"

    .line 157
    invoke-direct {v0, v1, v7, v7}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_NOTIFY:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    .line 158
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    const-string v1, "HTTP_REQUEST_SUBSCRIBE"

    .line 161
    invoke-direct {v0, v1, v8, v8}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_SUBSCRIBE:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    .line 162
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    const-string v1, "HTTP_REQUEST_UNSUBSCRIBE"

    const/4 v2, 0x5

    .line 165
    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_UNSUBSCRIBE:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    .line 166
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    const-string v1, "HTTP_REQUEST_MSEARCH"

    const/4 v2, 0x6

    .line 169
    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_MSEARCH:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    .line 170
    new-instance v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    const-string v1, "HTTP_REQUEST_HEAD"

    const/4 v2, 0x7

    .line 173
    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_HEAD:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    .line 140
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_GET:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_POST:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_M_POST:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_NOTIFY:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_SUBSCRIBE:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_UNSUBSCRIBE:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_MSEARCH:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->HTTP_REQUEST_HEAD:Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->ENUM$VALUES:[Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "val"    # I

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 183
    iput p3, p0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->m_val:I

    .line 184
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    return-object v0
.end method

.method public static values()[Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->ENUM$VALUES:[Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method protected getVal()I
    .registers 2

    .prologue
    .line 192
    iget v0, p0, Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;->m_val:I

    return v0
.end method
