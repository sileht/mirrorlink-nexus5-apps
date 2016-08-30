.class public Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
.super Ljava/lang/Object;
.source "DrmFwExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdrm/DrmFwExt$MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFileType"
.end annotation


# instance fields
.field public final fileType:I

.field public final mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput p1, p0, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;->fileType:I

    .line 295
    iput-object p2, p0, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    .line 296
    return-void
.end method
