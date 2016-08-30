.class public Lcom/lge/systemui/SimpleButtonItem;
.super Ljava/lang/Object;
.source "SimpleButtonItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemui/SimpleButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SimpleButtonItem"


# instance fields
.field public activityName:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public sequence:I

.field public visible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Lcom/lge/systemui/SimpleButtonItem$1;

    invoke-direct {v0}, Lcom/lge/systemui/SimpleButtonItem$1;-><init>()V

    sput-object v0, Lcom/lge/systemui/SimpleButtonItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "sequence"    # I
    .param p4, "visible"    # Z

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/lge/systemui/SimpleButtonItem;->id:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/lge/systemui/SimpleButtonItem;->activityName:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/lge/systemui/SimpleButtonItem;->sequence:I

    .line 24
    iput-boolean p4, p0, Lcom/lge/systemui/SimpleButtonItem;->visible:Z

    .line 25
    return-void
.end method

.method public static dump(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/systemui/SimpleButtonItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/systemui/SimpleButtonItem;>;"
    const-string v1, "SimpleButtonItem"

    const-string v2, "------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_19

    .line 102
    const-string v1, "SimpleButtonItem"

    const-string v2, "------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 99
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemui/SimpleButtonItem;

    .line 100
    .local v0, "item":Lcom/lge/systemui/SimpleButtonItem;
    const-string v2, "SimpleButtonItem"

    invoke-virtual {v0}, Lcom/lge/systemui/SimpleButtonItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 78
    if-eqz p1, :cond_38

    .line 79
    :try_start_3
    move-object v0, p1

    check-cast v0, Lcom/lge/systemui/SimpleButtonItem;

    move-object v1, v0

    .line 80
    .local v1, "other":Lcom/lge/systemui/SimpleButtonItem;
    iget-object v3, v1, Lcom/lge/systemui/SimpleButtonItem;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/systemui/SimpleButtonItem;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 81
    iget v3, v1, Lcom/lge/systemui/SimpleButtonItem;->sequence:I

    iget v4, p0, Lcom/lge/systemui/SimpleButtonItem;->sequence:I

    if-ne v3, v4, :cond_38

    .line 82
    iget-boolean v3, v1, Lcom/lge/systemui/SimpleButtonItem;->visible:Z

    iget-boolean v4, p0, Lcom/lge/systemui/SimpleButtonItem;->visible:Z

    if-ne v3, v4, :cond_38

    .line 83
    iget-object v3, v1, Lcom/lge/systemui/SimpleButtonItem;->activityName:Ljava/lang/String;

    if-nez v3, :cond_26

    iget-object v3, p0, Lcom/lge/systemui/SimpleButtonItem;->activityName:Ljava/lang/String;

    if-nez v3, :cond_26

    .line 94
    .end local v1    # "other":Lcom/lge/systemui/SimpleButtonItem;
    :cond_25
    :goto_25
    return v2

    .line 85
    .restart local v1    # "other":Lcom/lge/systemui/SimpleButtonItem;
    :cond_26
    iget-object v3, v1, Lcom/lge/systemui/SimpleButtonItem;->activityName:Ljava/lang/String;

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/lge/systemui/SimpleButtonItem;->activityName:Ljava/lang/String;

    if-eqz v3, :cond_38

    .line 86
    iget-object v3, v1, Lcom/lge/systemui/SimpleButtonItem;->activityName:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/systemui/SimpleButtonItem;->activityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_35} :catch_3a

    move-result v3

    if-nez v3, :cond_25

    .line 94
    .end local v1    # "other":Lcom/lge/systemui/SimpleButtonItem;
    :cond_38
    :goto_38
    const/4 v2, 0x0

    goto :goto_25

    :catch_3a
    move-exception v2

    goto :goto_38
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemui/SimpleButtonItem;->id:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemui/SimpleButtonItem;->activityName:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/systemui/SimpleButtonItem;->sequence:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_1c

    :goto_19
    iput-boolean v0, p0, Lcom/lge/systemui/SimpleButtonItem;->visible:Z

    .line 57
    return-void

    .line 56
    :cond_1c
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 61
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "toString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n\tid: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/SimpleButtonItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "]\n\tactivityName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/SimpleButtonItem;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "]\n\tsequence: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/systemui/SimpleButtonItem;->sequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "]\n\tvisible: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/systemui/SimpleButtonItem;->visible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/systemui/SimpleButtonItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/lge/systemui/SimpleButtonItem;->activityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget v0, p0, Lcom/lge/systemui/SimpleButtonItem;->sequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-boolean v0, p0, Lcom/lge/systemui/SimpleButtonItem;->visible:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    return-void

    .line 32
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method
