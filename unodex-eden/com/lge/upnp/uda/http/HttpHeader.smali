.class public Lcom/lge/upnp/uda/http/HttpHeader;
.super Lcom/lge/upnp/uda/http/IHttpHeader;
.source "HttpHeader.java"


# instance fields
.field public m_header:Ljava/lang/String;

.field public m_value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lge/upnp/uda/http/IHttpHeader;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/lge/upnp/uda/http/HttpHeader;->m_header:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/lge/upnp/uda/http/HttpHeader;->m_value:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/upnp/uda/http/HttpHeader;->m_header:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/upnp/uda/http/HttpHeader;->m_value:Ljava/lang/String;

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lge/upnp/uda/http/HttpHeader;->m_header:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lge/upnp/uda/http/HttpHeader;->m_value:Ljava/lang/String;

    .line 72
    return-void
.end method
