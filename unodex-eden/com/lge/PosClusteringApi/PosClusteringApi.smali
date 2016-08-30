.class public Lcom/lge/PosClusteringApi/PosClusteringApi;
.super Ljava/lang/Object;
.source "PosClusteringApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;
    }
.end annotation


# static fields
.field public static final ACTION_FOR_INOUT_NOTI:Ljava/lang/String; = "com.lge.myplace.statusChanged"

.field public static final ACTION_HOME_DETECTED:Ljava/lang/String; = "com.lge.myplace.homeDetected"

.field public static final HOME:Ljava/lang/String; = "HOME"

.field public static final STATUS_IN:Ljava/lang/String; = "IN"

.field public static final STATUS_OUT:Ljava/lang/String; = "OUT"

.field public static final TAG_CLUSTER_ID:Ljava/lang/String; = "clusterId"

.field public static final TAG_STATUS:Ljava/lang/String; = "status"

.field public static final TAG_TAG_INFO:Ljava/lang/String; = "tag"


# instance fields
.field private cr:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/PosClusteringApi/PosClusteringApi;->cr:Landroid/content/ContentResolver;

    .line 27
    return-void
.end method


# virtual methods
.method public getHomePosInfo()Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 31
    const-string v6, ""

    const-string v7, "getHomePosInfo()"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v6, p0, Lcom/lge/PosClusteringApi/PosClusteringApi;->cr:Landroid/content/ContentResolver;

    const-string v7, "content://com.lge.myplace.engine.app.data/8"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 35
    .local v5, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 37
    .local v3, "result":Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;
    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v9, :cond_72

    .line 39
    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    .local v1, "data":Ljava/lang/String;
    const-string v6, "null"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_72

    .line 43
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "str":[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_72

    .line 47
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 49
    .local v0, "clusterId":I
    if-lez v0, :cond_72

    .line 51
    new-instance v2, Landroid/location/Location;

    const-string v6, "HOME"

    invoke-direct {v2, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 52
    .local v2, "loc":Landroid/location/Location;
    aget-object v6, v4, v9

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    .line 53
    const/4 v6, 0x2

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 54
    const/4 v6, 0x3

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v2, v6}, Landroid/location/Location;->setAccuracy(F)V

    .line 55
    new-instance v3, Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;

    .end local v3    # "result":Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;
    invoke-direct {v3, p0, v0, v2}, Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;-><init>(Lcom/lge/PosClusteringApi/PosClusteringApi;ILandroid/location/Location;)V

    .line 61
    .end local v0    # "clusterId":I
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "loc":Landroid/location/Location;
    .end local v4    # "str":[Ljava/lang/String;
    .restart local v3    # "result":Lcom/lge/PosClusteringApi/PosClusteringApi$LocationInfo;
    :cond_72
    return-object v3
.end method
