.class interface abstract Lcom/lge/media/DocumentsThumbnail$VideoThumbnailQuery;
.super Ljava/lang/Object;
.source "DocumentsThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/DocumentsThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "VideoThumbnailQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field public static final PROJECTION_ID:[Ljava/lang/String;

.field public static final _DATA:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-array v0, v3, [Ljava/lang/String;

    .line 73
    const-string v1, "_data"

    aput-object v1, v0, v2

    .line 72
    sput-object v0, Lcom/lge/media/DocumentsThumbnail$VideoThumbnailQuery;->PROJECTION:[Ljava/lang/String;

    .line 75
    new-array v0, v3, [Ljava/lang/String;

    .line 76
    const-string v1, "_id"

    aput-object v1, v0, v2

    .line 75
    sput-object v0, Lcom/lge/media/DocumentsThumbnail$VideoThumbnailQuery;->PROJECTION_ID:[Ljava/lang/String;

    .line 78
    return-void
.end method
