.class Lcom/android/ims/LGImsDialog$1;
.super Ljava/lang/Object;
.source "LGImsDialog.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/LGImsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/ims/LGImsDialog;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/LGImsDialog;
    .registers 10
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x1

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 315
    .local v2, "direction":I
    invoke-static {p1}, Lcom/android/ims/LGImsDialog$State;->createState(Landroid/os/Parcel;)Lcom/android/ims/LGImsDialog$State;

    move-result-object v3

    .line 316
    .local v3, "state":Lcom/android/ims/LGImsDialog$State;
    invoke-static {p1}, Lcom/android/ims/LGImsDialog$Participant;->createParticipant(Landroid/os/Parcel;)Lcom/android/ims/LGImsDialog$Participant;

    move-result-object v4

    .line 317
    .local v4, "local":Lcom/android/ims/LGImsDialog$Participant;
    invoke-static {p1}, Lcom/android/ims/LGImsDialog$Participant;->createParticipant(Landroid/os/Parcel;)Lcom/android/ims/LGImsDialog$Participant;

    move-result-object v5

    .line 319
    .local v5, "remote":Lcom/android/ims/LGImsDialog$Participant;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v6, :cond_28

    .line 320
    .local v6, "pullEnabled":Z
    :goto_1b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/android/ims/ImsStreamMediaProfile;

    .line 322
    .local v7, "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    new-instance v0, Lcom/android/ims/LGImsDialog;

    invoke-direct/range {v0 .. v7}, Lcom/android/ims/LGImsDialog;-><init>(Ljava/lang/String;ILcom/android/ims/LGImsDialog$State;Lcom/android/ims/LGImsDialog$Participant;Lcom/android/ims/LGImsDialog$Participant;ZLcom/android/ims/ImsStreamMediaProfile;)V

    return-object v0

    .line 319
    .end local v6    # "pullEnabled":Z
    .end local v7    # "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    :cond_28
    const/4 v6, 0x0

    goto :goto_1b
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/ims/LGImsDialog$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/LGImsDialog;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/ims/LGImsDialog;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 328
    new-array v0, p1, [Lcom/android/ims/LGImsDialog;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/ims/LGImsDialog$1;->newArray(I)[Lcom/android/ims/LGImsDialog;

    move-result-object v0

    return-object v0
.end method
