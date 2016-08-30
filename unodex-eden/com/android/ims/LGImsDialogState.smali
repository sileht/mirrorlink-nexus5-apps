.class public Lcom/android/ims/LGImsDialogState;
.super Ljava/lang/Object;
.source "LGImsDialogState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/LGImsDialogState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ims/LGImsDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    new-instance v0, Lcom/android/ims/LGImsDialogState$1;

    invoke-direct {v0}, Lcom/android/ims/LGImsDialogState$1;-><init>()V

    .line 95
    sput-object v0, Lcom/android/ims/LGImsDialogState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/ims/LGImsDialogState;->mDialogs:Ljava/util/List;

    .line 38
    const-class v3, Lcom/android/ims/LGImsDialogState;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 39
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 41
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    if-lt v1, v2, :cond_18

    .line 44
    return-void

    .line 42
    :cond_18
    iget-object v4, p0, Lcom/android/ims/LGImsDialogState;->mDialogs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/ims/LGImsDialog;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ims/LGImsDialog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "dialogs":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/LGImsDialog;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/ims/LGImsDialogState;->mDialogs:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getDialogs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/ims/LGImsDialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/ims/LGImsDialogState;->mDialogs:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 52
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string v3, "[ ImsDialogState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    iget-object v3, p0, Lcom/android/ims/LGImsDialogState;->mDialogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 57
    iget-object v3, p0, Lcom/android/ims/LGImsDialogState;->mDialogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3e

    .line 58
    const-string v3, ", [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    iget-object v3, p0, Lcom/android/ims/LGImsDialogState;->mDialogs:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/LGImsDialog;

    .line 62
    .local v0, "dialog":Lcom/android/ims/LGImsDialog;
    invoke-virtual {v0}, Lcom/android/ims/LGImsDialog;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_31
    iget-object v3, p0, Lcom/android/ims/LGImsDialogState;->mDialogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_48

    .line 71
    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    .end local v0    # "dialog":Lcom/android/ims/LGImsDialog;
    .end local v1    # "i":I
    :cond_3e
    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 65
    .restart local v0    # "dialog":Lcom/android/ims/LGImsDialog;
    .restart local v1    # "i":I
    :cond_48
    iget-object v3, p0, Lcom/android/ims/LGImsDialogState;->mDialogs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "dialog":Lcom/android/ims/LGImsDialog;
    check-cast v0, Lcom/android/ims/LGImsDialog;

    .line 66
    .restart local v0    # "dialog":Lcom/android/ims/LGImsDialog;
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-virtual {v0}, Lcom/android/ims/LGImsDialog;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_31
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/ims/LGImsDialogState;->mDialogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v1, p0, Lcom/android/ims/LGImsDialogState;->mDialogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget-object v1, p0, Lcom/android/ims/LGImsDialogState;->mDialogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1b

    .line 93
    .end local v0    # "i":I
    :cond_1a
    return-void

    .line 90
    .restart local v0    # "i":I
    :cond_1b
    iget-object v1, p0, Lcom/android/ims/LGImsDialogState;->mDialogs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method
