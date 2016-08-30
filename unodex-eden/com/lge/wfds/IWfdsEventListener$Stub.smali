.class public abstract Lcom/lge/wfds/IWfdsEventListener$Stub;
.super Landroid/os/Binder;
.source "IWfdsEventListener.java"

# interfaces
.implements Lcom/lge/wfds/IWfdsEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/IWfdsEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wfds/IWfdsEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.wfds.IWfdsEventListener"

.field static final TRANSACTION_wfdsAdvertiseStatus:I = 0x3

.field static final TRANSACTION_wfdsConnectSessionRequest:I = 0x4

.field static final TRANSACTION_wfdsConnectStatus:I = 0x7

.field static final TRANSACTION_wfdsPortStatus:I = 0x9

.field static final TRANSACTION_wfdsSearchResult:I = 0x1

.field static final TRANSACTION_wfdsSearchTerminated:I = 0x2

.field static final TRANSACTION_wfdsSessionConfigRequest:I = 0x6

.field static final TRANSACTION_wfdsSessionRequest:I = 0x5

.field static final TRANSACTION_wfdsSessionStatus:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/lge/wfds/IWfdsEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/wfds/IWfdsEventListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "com.lge.wfds.IWfdsEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/wfds/IWfdsEventListener;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/lge/wfds/IWfdsEventListener;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/lge/wfds/IWfdsEventListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/wfds/IWfdsEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_10e

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_9
    return v8

    .line 45
    :sswitch_a
    const-string v0, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v0, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 55
    sget-object v0, Lcom/lge/wfds/WfdsDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wfds/WfdsDevice;

    .line 60
    .local v2, "_arg1":Lcom/lge/wfds/WfdsDevice;
    :goto_27
    invoke-virtual {p0, v1, v2}, Lcom/lge/wfds/IWfdsEventListener$Stub;->wfdsSearchResult(ILcom/lge/wfds/WfdsDevice;)V

    goto :goto_9

    .line 58
    .end local v2    # "_arg1":Lcom/lge/wfds/WfdsDevice;
    :cond_2b
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/lge/wfds/WfdsDevice;
    goto :goto_27

    .line 65
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/lge/wfds/WfdsDevice;
    :sswitch_2d
    const-string v0, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 70
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/lge/wfds/IWfdsEventListener$Stub;->wfdsSearchTerminated(II)V

    goto :goto_9

    .line 75
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_3e
    const-string v0, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 81
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 82
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/wfds/IWfdsEventListener$Stub;->wfdsAdvertiseStatus(III)V

    goto :goto_9

    .line 87
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_53
    const-string v0, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6a

    .line 90
    sget-object v0, Lcom/lge/wfds/WfdsDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wfds/WfdsDevice;

    .line 95
    .local v1, "_arg0":Lcom/lge/wfds/WfdsDevice;
    :goto_66
    invoke-virtual {p0, v1}, Lcom/lge/wfds/IWfdsEventListener$Stub;->wfdsConnectSessionRequest(Lcom/lge/wfds/WfdsDevice;)V

    goto :goto_9

    .line 93
    .end local v1    # "_arg0":Lcom/lge/wfds/WfdsDevice;
    :cond_6a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/lge/wfds/WfdsDevice;
    goto :goto_66

    .line 100
    .end local v1    # "_arg0":Lcom/lge/wfds/WfdsDevice;
    :sswitch_6c
    const-string v0, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 110
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8c

    move v6, v8

    .line 114
    .local v6, "_arg5":Z
    :cond_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg6":I
    move-object v0, p0

    .line 115
    invoke-virtual/range {v0 .. v7}, Lcom/lge/wfds/IWfdsEventListener$Stub;->wfdsSessionRequest(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    goto/16 :goto_9

    .line 120
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":I
    :sswitch_96
    const-string v0, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_af

    move v2, v8

    .line 126
    .local v2, "_arg1":Z
    :goto_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 127
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/wfds/IWfdsEventListener$Stub;->wfdsSessionConfigRequest(IZI)V

    goto/16 :goto_9

    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :cond_af
    move v2, v6

    .line 124
    goto :goto_a6

    .line 132
    .end local v1    # "_arg0":I
    :sswitch_b1
    const-string v0, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 140
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/lge/wfds/IWfdsEventListener$Stub;->wfdsConnectStatus(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_9

    .line 146
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_cb
    const-string v0, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 154
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 156
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg4":Ljava/lang/String;
    move-object v0, p0

    .line 157
    invoke-virtual/range {v0 .. v5}, Lcom/lge/wfds/IWfdsEventListener$Stub;->wfdsSessionStatus(Ljava/lang/String;IIILjava/lang/String;)V

    goto/16 :goto_9

    .line 162
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    :sswitch_ea
    const-string v0, "com.lge.wfds.IWfdsEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 168
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 172
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 174
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg5":I
    move-object v0, p0

    .line 175
    invoke-virtual/range {v0 .. v6}, Lcom/lge/wfds/IWfdsEventListener$Stub;->wfdsPortStatus(Ljava/lang/String;ILjava/lang/String;III)V

    goto/16 :goto_9

    .line 41
    nop

    :sswitch_data_10e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_53
        0x5 -> :sswitch_6c
        0x6 -> :sswitch_96
        0x7 -> :sswitch_b1
        0x8 -> :sswitch_cb
        0x9 -> :sswitch_ea
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
