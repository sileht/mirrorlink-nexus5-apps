.class public Lcom/lge/systemui/GlanceViewStatusBar;
.super Ljava/lang/Object;
.source "GlanceViewStatusBar.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemui/GlanceViewStatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public notificationIcons:Landroid/graphics/Bitmap;

.field public operatorIcon:Landroid/graphics/Bitmap;

.field public statusIcons:Landroid/graphics/Bitmap;

.field public systemIcons:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/lge/systemui/GlanceViewStatusBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemui/GlanceViewStatusBar;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/lge/systemui/GlanceViewStatusBar$1;

    invoke-direct {v0}, Lcom/lge/systemui/GlanceViewStatusBar$1;-><init>()V

    sput-object v0, Lcom/lge/systemui/GlanceViewStatusBar;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "operatorIcon"    # Landroid/graphics/Bitmap;
    .param p2, "notificationIcons"    # Landroid/graphics/Bitmap;
    .param p3, "statusIcons"    # Landroid/graphics/Bitmap;
    .param p4, "systemIcons"    # Landroid/graphics/Bitmap;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/lge/systemui/GlanceViewStatusBar;->operatorIcon:Landroid/graphics/Bitmap;

    .line 34
    iput-object p2, p0, Lcom/lge/systemui/GlanceViewStatusBar;->notificationIcons:Landroid/graphics/Bitmap;

    .line 35
    iput-object p3, p0, Lcom/lge/systemui/GlanceViewStatusBar;->statusIcons:Landroid/graphics/Bitmap;

    .line 36
    iput-object p4, p0, Lcom/lge/systemui/GlanceViewStatusBar;->systemIcons:Landroid/graphics/Bitmap;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/lge/systemui/GlanceViewStatusBar;->readFromParcel(Landroid/os/Parcel;)V

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 75
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lge/systemui/GlanceViewStatusBar;->operatorIcon:Landroid/graphics/Bitmap;

    .line 76
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lge/systemui/GlanceViewStatusBar;->notificationIcons:Landroid/graphics/Bitmap;

    .line 77
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lge/systemui/GlanceViewStatusBar;->statusIcons:Landroid/graphics/Bitmap;

    .line 78
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lge/systemui/GlanceViewStatusBar;->systemIcons:Landroid/graphics/Bitmap;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 88
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n    operatorIcon: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/GlanceViewStatusBar;->operatorIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n    notificationIcons: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/GlanceViewStatusBar;->notificationIcons:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n    statusIcons: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/GlanceViewStatusBar;->statusIcons:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n    systemIcons: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/GlanceViewStatusBar;->systemIcons:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lcom/lge/systemui/GlanceViewStatusBar;->operatorIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_27

    .line 46
    iget-object v0, p0, Lcom/lge/systemui/GlanceViewStatusBar;->operatorIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 52
    :goto_b
    iget-object v0, p0, Lcom/lge/systemui/GlanceViewStatusBar;->notificationIcons:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_32

    .line 53
    iget-object v0, p0, Lcom/lge/systemui/GlanceViewStatusBar;->notificationIcons:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 59
    :goto_14
    iget-object v0, p0, Lcom/lge/systemui/GlanceViewStatusBar;->statusIcons:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3d

    .line 60
    iget-object v0, p0, Lcom/lge/systemui/GlanceViewStatusBar;->statusIcons:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    :goto_1d
    iget-object v0, p0, Lcom/lge/systemui/GlanceViewStatusBar;->systemIcons:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_48

    .line 67
    iget-object v0, p0, Lcom/lge/systemui/GlanceViewStatusBar;->systemIcons:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    :goto_26
    return-void

    .line 48
    :cond_27
    sget-object v0, Lcom/lge/systemui/GlanceViewStatusBar;->TAG:Ljava/lang/String;

    const-string v1, "writeToParcel(), operatorIcon is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_b

    .line 55
    :cond_32
    sget-object v0, Lcom/lge/systemui/GlanceViewStatusBar;->TAG:Ljava/lang/String;

    const-string v1, "writeToParcel(), notificationIcons is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_14

    .line 62
    :cond_3d
    sget-object v0, Lcom/lge/systemui/GlanceViewStatusBar;->TAG:Ljava/lang/String;

    const-string v1, "writeToParcel(), statusIcons is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1d

    .line 69
    :cond_48
    sget-object v0, Lcom/lge/systemui/GlanceViewStatusBar;->TAG:Ljava/lang/String;

    const-string v1, "writeToParcel(), systemIcons is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_26
.end method
