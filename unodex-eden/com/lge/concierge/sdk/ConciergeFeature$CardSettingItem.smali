.class public Lcom/lge/concierge/sdk/ConciergeFeature$CardSettingItem;
.super Ljava/lang/Object;
.source "ConciergeFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/concierge/sdk/ConciergeFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardSettingItem"
.end annotation


# instance fields
.field public mDbKey:Ljava/lang/String;

.field public mIsFeatureAvailable:Z

.field public mMinVersion:I

.field public mPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/concierge/sdk/ConciergeFeature$CardSettingItem;->mIsFeatureAvailable:Z

    .line 35
    return-void
.end method
