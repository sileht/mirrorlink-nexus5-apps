.class public abstract Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;
.super Landroid/os/Binder;
.source "ICommonAPIService.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/ICommonAPIService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/ICommonAPIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mirrorlink.android.commonapi.ICommonAPIService"

.field static final TRANSACTION_applicationStarted:I = 0x2

.field static final TRANSACTION_applicationStopping:I = 0x3

.field static final TRANSACTION_getCertificationManager:I = 0x4

.field static final TRANSACTION_getCommonAPIServiceApiLevel:I = 0x1

.field static final TRANSACTION_getConnectionManager:I = 0x5

.field static final TRANSACTION_getContextManager:I = 0x6

.field static final TRANSACTION_getDataServicesManager:I = 0x7

.field static final TRANSACTION_getDeviceInfoManager:I = 0x8

.field static final TRANSACTION_getDeviceStatusManager:I = 0x9

.field static final TRANSACTION_getDisplayManager:I = 0xa

.field static final TRANSACTION_getEventMappingManager:I = 0xb

.field static final TRANSACTION_getNotificationManager:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string/jumbo v0, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-virtual {p0, p0, v0}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/ICommonAPIService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 32
    if-nez p0, :cond_4

    .line 33
    return-object v1

    .line 35
    :cond_4
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.ICommonAPIService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    if-eqz v1, :cond_14

    .line 37
    check-cast v0, Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 39
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 29
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
    .line 47
    sparse-switch p1, :sswitch_data_226

    .line 191
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v23

    return v23

    .line 51
    :sswitch_8
    const-string/jumbo v23, "com.mirrorlink.android.commonapi.ICommonAPIService"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    const/16 v23, 0x1

    return v23

    .line 56
    :sswitch_15
    const-string/jumbo v23, "com.mirrorlink.android.commonapi.ICommonAPIService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getCommonAPIServiceApiLevel()I

    move-result v13

    .line 58
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    const/16 v23, 0x1

    return v23

    .line 64
    .end local v13    # "_result":I
    :sswitch_2e
    const-string/jumbo v23, "com.mirrorlink.android.commonapi.ICommonAPIService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 69
    .local v3, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->applicationStarted(Ljava/lang/String;I)V

    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    const/16 v23, 0x1

    return v23

    .line 75
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :sswitch_4b
    const-string/jumbo v23, "com.mirrorlink.android.commonapi.ICommonAPIService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->applicationStopping(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    const/16 v23, 0x1

    return v23

    .line 84
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_64
    const-string/jumbo v23, "com.mirrorlink.android.commonapi.ICommonAPIService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mirrorlink/android/commonapi/ICertificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/ICertificationListener;

    move-result-object v4

    .line 89
    .local v4, "_arg1":Lcom/mirrorlink/android/commonapi/ICertificationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getCertificationManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/ICertificationListener;)Lcom/mirrorlink/android/commonapi/ICertificationManager;

    move-result-object v14

    .line 90
    .local v14, "_result":Lcom/mirrorlink/android/commonapi/ICertificationManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v14, :cond_93

    invoke-interface {v14}, Lcom/mirrorlink/android/commonapi/ICertificationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v23

    :goto_89
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 92
    const/16 v23, 0x1

    return v23

    .line 91
    :cond_93
    const/16 v23, 0x0

    goto :goto_89

    .line 96
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lcom/mirrorlink/android/commonapi/ICertificationListener;
    .end local v14    # "_result":Lcom/mirrorlink/android/commonapi/ICertificationManager;
    :sswitch_96
    const-string/jumbo v23, "com.mirrorlink.android.commonapi.ICommonAPIService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 100
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mirrorlink/android/commonapi/IConnectionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IConnectionListener;

    move-result-object v5

    .line 101
    .local v5, "_arg1":Lcom/mirrorlink/android/commonapi/IConnectionListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getConnectionManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IConnectionListener;)Lcom/mirrorlink/android/commonapi/IConnectionManager;

    move-result-object v15

    .line 102
    .local v15, "_result":Lcom/mirrorlink/android/commonapi/IConnectionManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v15, :cond_c5

    invoke-interface {v15}, Lcom/mirrorlink/android/commonapi/IConnectionManager;->asBinder()Landroid/os/IBinder;

    move-result-object v23

    :goto_bb
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 104
    const/16 v23, 0x1

    return v23

    .line 103
    :cond_c5
    const/16 v23, 0x0

    goto :goto_bb

    .line 108
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Lcom/mirrorlink/android/commonapi/IConnectionListener;
    .end local v15    # "_result":Lcom/mirrorlink/android/commonapi/IConnectionManager;
    :sswitch_c8
    const-string/jumbo v23, "com.mirrorlink.android.commonapi.ICommonAPIService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mirrorlink/android/commonapi/IContextListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IContextListener;

    move-result-object v6

    .line 113
    .local v6, "_arg1":Lcom/mirrorlink/android/commonapi/IContextListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getContextManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IContextListener;)Lcom/mirrorlink/android/commonapi/IContextManager;

    move-result-object v16

    .line 114
    .local v16, "_result":Lcom/mirrorlink/android/commonapi/IContextManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v16, :cond_f7

    invoke-interface/range {v16 .. v16}, Lcom/mirrorlink/android/commonapi/IContextManager;->asBinder()Landroid/os/IBinder;

    move-result-object v23

    :goto_ed
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 116
    const/16 v23, 0x1

    return v23

    .line 115
    :cond_f7
    const/16 v23, 0x0

    goto :goto_ed

    .line 120
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Lcom/mirrorlink/android/commonapi/IContextListener;
    .end local v16    # "_result":Lcom/mirrorlink/android/commonapi/IContextManager;
    :sswitch_fa
    const-string/jumbo v23, "com.mirrorlink.android.commonapi.ICommonAPIService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mirrorlink/android/commonapi/IDataServicesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDataServicesListener;

    move-result-object v7

    .line 125
    .local v7, "_arg1":Lcom/mirrorlink/android/commonapi/IDataServicesListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getDataServicesManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDataServicesListener;)Lcom/mirrorlink/android/commonapi/IDataServicesManager;

    move-result-object v17

    .line 126
    .local v17, "_result":Lcom/mirrorlink/android/commonapi/IDataServicesManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v17, :cond_129

    invoke-interface/range {v17 .. v17}, Lcom/mirrorlink/android/commonapi/IDataServicesManager;->asBinder()Landroid/os/IBinder;

    move-result-object v23

    :goto_11f
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 128
    const/16 v23, 0x1

    return v23

    .line 127
    :cond_129
    const/16 v23, 0x0

    goto :goto_11f

    .line 132
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Lcom/mirrorlink/android/commonapi/IDataServicesListener;
    .end local v17    # "_result":Lcom/mirrorlink/android/commonapi/IDataServicesManager;
    :sswitch_12c
    const-string/jumbo v23, "com.mirrorlink.android.commonapi.ICommonAPIService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mirrorlink/android/commonapi/IDeviceInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;

    move-result-object v8

    .line 137
    .local v8, "_arg1":Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getDeviceInfoManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;)Lcom/mirrorlink/android/commonapi/IDeviceInfoManager;

    move-result-object v18

    .line 138
    .local v18, "_result":Lcom/mirrorlink/android/commonapi/IDeviceInfoManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v18, :cond_15b

    invoke-interface/range {v18 .. v18}, Lcom/mirrorlink/android/commonapi/IDeviceInfoManager;->asBinder()Landroid/os/IBinder;

    move-result-object v23

    :goto_151
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 140
    const/16 v23, 0x1

    return v23

    .line 139
    :cond_15b
    const/16 v23, 0x0

    goto :goto_151

    .line 144
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;
    .end local v18    # "_result":Lcom/mirrorlink/android/commonapi/IDeviceInfoManager;
    :sswitch_15e
    const-string/jumbo v23, "com.mirrorlink.android.commonapi.ICommonAPIService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mirrorlink/android/commonapi/IDeviceStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

    move-result-object v9

    .line 149
    .local v9, "_arg1":Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getDeviceStatusManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;)Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;

    move-result-object v19

    .line 150
    .local v19, "_result":Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v19, :cond_18d

    invoke-interface/range {v19 .. v19}, Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;->asBinder()Landroid/os/IBinder;

    move-result-object v23

    :goto_183
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 152
    const/16 v23, 0x1

    return v23

    .line 151
    :cond_18d
    const/16 v23, 0x0

    goto :goto_183

    .line 156
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;
    .end local v19    # "_result":Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;
    :sswitch_190
    const-string/jumbo v23, "com.mirrorlink.android.commonapi.ICommonAPIService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mirrorlink/android/commonapi/IDisplayListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDisplayListener;

    move-result-object v10

    .line 161
    .local v10, "_arg1":Lcom/mirrorlink/android/commonapi/IDisplayListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getDisplayManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDisplayListener;)Lcom/mirrorlink/android/commonapi/IDisplayManager;

    move-result-object v20

    .line 162
    .local v20, "_result":Lcom/mirrorlink/android/commonapi/IDisplayManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v20, :cond_1bf

    invoke-interface/range {v20 .. v20}, Lcom/mirrorlink/android/commonapi/IDisplayManager;->asBinder()Landroid/os/IBinder;

    move-result-object v23

    :goto_1b5
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 164
    const/16 v23, 0x1

    return v23

    .line 163
    :cond_1bf
    const/16 v23, 0x0

    goto :goto_1b5

    .line 168
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Lcom/mirrorlink/android/commonapi/IDisplayListener;
    .end local v20    # "_result":Lcom/mirrorlink/android/commonapi/IDisplayManager;
    :sswitch_1c2
    const-string/jumbo v23, "com.mirrorlink.android.commonapi.ICommonAPIService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mirrorlink/android/commonapi/IEventMappingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IEventMappingListener;

    move-result-object v11

    .line 173
    .local v11, "_arg1":Lcom/mirrorlink/android/commonapi/IEventMappingListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getEventMappingManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IEventMappingListener;)Lcom/mirrorlink/android/commonapi/IEventMappingManager;

    move-result-object v21

    .line 174
    .local v21, "_result":Lcom/mirrorlink/android/commonapi/IEventMappingManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v21, :cond_1f1

    invoke-interface/range {v21 .. v21}, Lcom/mirrorlink/android/commonapi/IEventMappingManager;->asBinder()Landroid/os/IBinder;

    move-result-object v23

    :goto_1e7
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 176
    const/16 v23, 0x1

    return v23

    .line 175
    :cond_1f1
    const/16 v23, 0x0

    goto :goto_1e7

    .line 180
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Lcom/mirrorlink/android/commonapi/IEventMappingListener;
    .end local v21    # "_result":Lcom/mirrorlink/android/commonapi/IEventMappingManager;
    :sswitch_1f4
    const-string/jumbo v23, "com.mirrorlink.android.commonapi.ICommonAPIService"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mirrorlink/android/commonapi/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/INotificationListener;

    move-result-object v12

    .line 185
    .local v12, "_arg1":Lcom/mirrorlink/android/commonapi/INotificationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;->getNotificationManager(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/INotificationListener;)Lcom/mirrorlink/android/commonapi/INotificationManager;

    move-result-object v22

    .line 186
    .local v22, "_result":Lcom/mirrorlink/android/commonapi/INotificationManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v22, :cond_223

    invoke-interface/range {v22 .. v22}, Lcom/mirrorlink/android/commonapi/INotificationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v23

    :goto_219
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 188
    const/16 v23, 0x1

    return v23

    .line 187
    :cond_223
    const/16 v23, 0x0

    goto :goto_219

    .line 47
    :sswitch_data_226
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_4b
        0x4 -> :sswitch_64
        0x5 -> :sswitch_96
        0x6 -> :sswitch_c8
        0x7 -> :sswitch_fa
        0x8 -> :sswitch_12c
        0x9 -> :sswitch_15e
        0xa -> :sswitch_190
        0xb -> :sswitch_1c2
        0xc -> :sswitch_1f4
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
