.class public Lcom/lge/cic/eden/service/eventclustering/EventClusteringApplication;
.super Landroid/app/Application;
.source "EventClusteringApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const-class v0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 47
    return-void
.end method
