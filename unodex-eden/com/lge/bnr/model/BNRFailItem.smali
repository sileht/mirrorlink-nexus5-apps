.class public Lcom/lge/bnr/model/BNRFailItem;
.super Ljava/lang/Object;
.source "BNRFailItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/bnr/model/BNRFailItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backupPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private failCode:I

.field private groupIndex:I

.field private index:I

.field private jobName:Ljava/lang/String;

.field private packageLabel:Ljava/lang/String;

.field private packageNm:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 163
    new-instance v0, Lcom/lge/bnr/model/BNRFailItem$1;

    invoke-direct {v0}, Lcom/lge/bnr/model/BNRFailItem$1;-><init>()V

    sput-object v0, Lcom/lge/bnr/model/BNRFailItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 177
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(III)V
    .registers 4
    .param p1, "groupIndex"    # I
    .param p2, "index"    # I
    .param p3, "failCode"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/lge/bnr/model/BNRFailItem;->groupIndex:I

    .line 36
    iput p2, p0, Lcom/lge/bnr/model/BNRFailItem;->index:I

    .line 37
    iput p3, p0, Lcom/lge/bnr/model/BNRFailItem;->failCode:I

    .line 38
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "groupIndex"    # I
    .param p2, "packageNm"    # Ljava/lang/String;
    .param p3, "packageLabel"    # Ljava/lang/String;
    .param p4, "failCode"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/lge/bnr/model/BNRFailItem;->groupIndex:I

    .line 49
    iput-object p2, p0, Lcom/lge/bnr/model/BNRFailItem;->packageNm:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/lge/bnr/model/BNRFailItem;->packageLabel:Ljava/lang/String;

    .line 51
    iput p4, p0, Lcom/lge/bnr/model/BNRFailItem;->failCode:I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-direct {p0, p1}, Lcom/lge/bnr/model/BNRFailItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/bnr/model/BNRFailItem;->groupIndex:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/bnr/model/BNRFailItem;->index:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/bnr/model/BNRFailItem;->jobName:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/bnr/model/BNRFailItem;->packageNm:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/bnr/model/BNRFailItem;->packageLabel:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/bnr/model/BNRFailItem;->versionName:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/bnr/model/BNRFailItem;->versionCode:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/bnr/model/BNRFailItem;->failCode:I

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/bnr/model/BNRFailItem;->backupPath:Ljava/util/ArrayList;

    .line 161
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public getBackupPath()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/bnr/model/BNRFailItem;->backupPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFailCode()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/lge/bnr/model/BNRFailItem;->failCode:I

    return v0
.end method

.method public getGroupIndex()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/lge/bnr/model/BNRFailItem;->groupIndex:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/lge/bnr/model/BNRFailItem;->index:I

    return v0
.end method

.method public getJobName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/bnr/model/BNRFailItem;->jobName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/bnr/model/BNRFailItem;->packageLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lge/bnr/model/BNRFailItem;->packageNm:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/bnr/model/BNRFailItem;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageVersionCode()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/lge/bnr/model/BNRFailItem;->versionCode:I

    return v0
.end method

.method public setBackupPath(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "path":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lge/bnr/model/BNRFailItem;->backupPath:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public setFailCode(I)V
    .registers 2
    .param p1, "failCode"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/lge/bnr/model/BNRFailItem;->failCode:I

    .line 90
    return-void
.end method

.method public setGroupIndex(I)V
    .registers 2
    .param p1, "groupIndex"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/lge/bnr/model/BNRFailItem;->groupIndex:I

    .line 82
    return-void
.end method

.method public setIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/lge/bnr/model/BNRFailItem;->index:I

    .line 94
    return-void
.end method

.method public setJobName(Ljava/lang/String;)V
    .registers 2
    .param p1, "jobName"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lge/bnr/model/BNRFailItem;->jobName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPackageLabel(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageLabel"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lge/bnr/model/BNRFailItem;->packageLabel:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setPackageNm(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageNm"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lge/bnr/model/BNRFailItem;->packageNm:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setPackageVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageNm"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lge/bnr/model/BNRFailItem;->versionName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setPackageVersionCode(I)V
    .registers 2
    .param p1, "versionCode"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/lge/bnr/model/BNRFailItem;->versionCode:I

    .line 114
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 139
    iget v0, p0, Lcom/lge/bnr/model/BNRFailItem;->groupIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Lcom/lge/bnr/model/BNRFailItem;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Lcom/lge/bnr/model/BNRFailItem;->jobName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/lge/bnr/model/BNRFailItem;->packageNm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/lge/bnr/model/BNRFailItem;->packageLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/lge/bnr/model/BNRFailItem;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget v0, p0, Lcom/lge/bnr/model/BNRFailItem;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Lcom/lge/bnr/model/BNRFailItem;->failCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v0, p0, Lcom/lge/bnr/model/BNRFailItem;->backupPath:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 148
    return-void
.end method
