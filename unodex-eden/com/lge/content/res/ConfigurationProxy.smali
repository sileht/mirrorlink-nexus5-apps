.class public Lcom/lge/content/res/ConfigurationProxy;
.super Ljava/lang/Object;
.source "ConfigurationProxy.java"


# static fields
.field private static sFontTypeIndex:Ljava/lang/Object;


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/content/res/ConfigurationProxy;->sFontTypeIndex:Ljava/lang/Object;

    .line 18
    const-class v0, Landroid/content/res/Configuration;

    const-string v1, "fontTypeIndex"

    invoke-static {v0, v1}, Lcom/lge/util/ProxyUtil;->loadField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/lge/content/res/ConfigurationProxy;->sFontTypeIndex:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lge/content/res/ConfigurationProxy;->mConfiguration:Landroid/content/res/Configuration;

    .line 23
    return-void
.end method


# virtual methods
.method public getFontTypeIndex()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lcom/lge/content/res/ConfigurationProxy;->sFontTypeIndex:Ljava/lang/Object;

    iget-object v1, p0, Lcom/lge/content/res/ConfigurationProxy;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v0, v1}, Lcom/lge/util/ProxyUtil;->getField(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setFontTypeIndex(I)V
    .registers 5
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/lge/content/res/ConfigurationProxy;->sFontTypeIndex:Ljava/lang/Object;

    iget-object v1, p0, Lcom/lge/content/res/ConfigurationProxy;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lge/util/ProxyUtil;->setField(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    return-void
.end method
