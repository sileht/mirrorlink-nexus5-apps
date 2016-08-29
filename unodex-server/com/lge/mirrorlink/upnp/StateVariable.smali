.class public Lcom/lge/mirrorlink/upnp/StateVariable;
.super Ljava/lang/Object;
.source "StateVariable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private prevValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Lcom/lge/mirrorlink/upnp/StateVariable;, "Lcom/lge/mirrorlink/upnp/StateVariable<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/StateVariable;->name:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/lge/mirrorlink/upnp/StateVariable;->value:Ljava/lang/Object;

    .line 13
    iput-object p2, p0, Lcom/lge/mirrorlink/upnp/StateVariable;->prevValue:Ljava/lang/Object;

    .line 9
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    .local p0, "this":Lcom/lge/mirrorlink/upnp/StateVariable;, "Lcom/lge/mirrorlink/upnp/StateVariable<TT;>;"
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/StateVariable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/lge/mirrorlink/upnp/StateVariable;, "Lcom/lge/mirrorlink/upnp/StateVariable<TT;>;"
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/StateVariable;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    .local p0, "this":Lcom/lge/mirrorlink/upnp/StateVariable;, "Lcom/lge/mirrorlink/upnp/StateVariable<TT;>;"
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/StateVariable;->value:Ljava/lang/Object;

    if-nez v0, :cond_8

    .line 29
    const-string/jumbo v0, ""

    return-object v0

    .line 31
    :cond_8
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/StateVariable;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 32
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/StateVariable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 34
    :cond_13
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/StateVariable;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/lge/mirrorlink/upnp/StateVariable;, "Lcom/lge/mirrorlink/upnp/StateVariable<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lge/mirrorlink/upnp/StateVariable;->setValue(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;Z)Z
    .registers 5
    .param p2, "forcenotify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/lge/mirrorlink/upnp/StateVariable;, "Lcom/lge/mirrorlink/upnp/StateVariable<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/StateVariable;->value:Ljava/lang/Object;

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/StateVariable;->prevValue:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/StateVariable;->value:Ljava/lang/Object;

    .line 48
    if-nez p2, :cond_14

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/StateVariable;->prevValue:Ljava/lang/Object;

    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/StateVariable;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 51
    const/4 v0, 0x0

    return v0

    .line 49
    :cond_14
    const/4 v0, 0x1

    return v0
.end method
