.class public Lcom/lge/browser/metropcs/MetroPCSPurchase$Purchase;
.super Ljava/lang/Object;
.source "MetroPCSPurchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/browser/metropcs/MetroPCSPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Purchase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/browser/metropcs/MetroPCSPurchase$Purchase$Column;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_URL:Ljava/lang/String; = "http://www.metropcs.mobi/"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string v0, "content://com.lge.browser.metropcs/purchase"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/browser/metropcs/MetroPCSPurchase$Purchase;->CONTENT_URI:Landroid/net/Uri;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
