.class public Lcom/android/ims/LGImsDialog$Participant;
.super Ljava/lang/Object;
.source "LGImsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/LGImsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Participant"
.end annotation


# instance fields
.field private final mConference:Z

.field private final mDisplayName:Ljava/lang/String;

.field private final mExtraParams:Landroid/os/Bundle;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;ZLandroid/os/Bundle;)V
    .registers 5
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "conference"    # Z
    .param p4, "extraParams"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/android/ims/LGImsDialog$Participant;->mDisplayName:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/android/ims/LGImsDialog$Participant;->mUri:Landroid/net/Uri;

    .line 138
    iput-boolean p3, p0, Lcom/android/ims/LGImsDialog$Participant;->mConference:Z

    .line 139
    iput-object p4, p0, Lcom/android/ims/LGImsDialog$Participant;->mExtraParams:Landroid/os/Bundle;

    .line 140
    return-void
.end method

.method public static createParticipant(Landroid/os/Parcel;)Lcom/android/ims/LGImsDialog$Participant;
    .registers 7
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 181
    const-class v5, Lcom/android/ims/LGImsDialog;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 183
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "displayName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 185
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v1, :cond_23

    .line 186
    .local v1, "conference":Z
    :goto_17
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 188
    .local v3, "extraParams":Landroid/os/Bundle;
    new-instance v5, Lcom/android/ims/LGImsDialog$Participant;

    invoke-direct {v5, v2, v4, v1, v3}, Lcom/android/ims/LGImsDialog$Participant;-><init>(Ljava/lang/String;Landroid/net/Uri;ZLandroid/os/Bundle;)V

    return-object v5

    .line 185
    .end local v1    # "conference":Z
    .end local v3    # "extraParams":Landroid/os/Bundle;
    :cond_23
    const/4 v1, 0x0

    goto :goto_17
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/ims/LGImsDialog$Participant;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraParams()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/ims/LGImsDialog$Participant;->mExtraParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/ims/LGImsDialog$Participant;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isConference()Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/ims/LGImsDialog$Participant;->mConference:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 162
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[Participant: display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog$Participant;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog$Participant;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 166
    const-string v1, ", conference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog$Participant;->isConference()Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "Y"

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 167
    :cond_37
    const-string v1, "N"

    goto :goto_2a
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog$Participant;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog$Participant;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 176
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog$Participant;->isConference()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog$Participant;->getExtraParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 178
    return-void

    :cond_21
    move v0, v1

    .line 176
    goto :goto_16
.end method
