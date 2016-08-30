.class interface abstract Lcom/lge/media/DocumentsThumbnail$ImageOrientationQuery;
.super Ljava/lang/Object;
.source "DocumentsThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/DocumentsThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ImageOrientationQuery"
.end annotation


# static fields
.field public static final ORIENTATION:I

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 219
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 220
    const-string v2, "orientation"

    aput-object v2, v0, v1

    .line 219
    sput-object v0, Lcom/lge/media/DocumentsThumbnail$ImageOrientationQuery;->PROJECTION:[Ljava/lang/String;

    .line 222
    return-void
.end method
