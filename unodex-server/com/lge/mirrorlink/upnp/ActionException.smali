.class public Lcom/lge/mirrorlink/upnp/ActionException;
.super Ljava/lang/Throwable;
.source "ActionException.java"


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 11
    iput p1, p0, Lcom/lge/mirrorlink/upnp/ActionException;->code:I

    .line 12
    iput-object p2, p0, Lcom/lge/mirrorlink/upnp/ActionException;->message:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcom/lge/mirrorlink/upnp/ActionException;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/ActionException;->message:Ljava/lang/String;

    return-object v0
.end method
