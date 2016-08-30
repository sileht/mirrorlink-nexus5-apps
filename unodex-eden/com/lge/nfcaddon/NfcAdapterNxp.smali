.class public Lcom/lge/nfcaddon/NfcAdapterNxp;
.super Ljava/lang/Object;
.source "NfcAdapterNxp.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "NfcNxp"

.field private static isBinded:Z

.field static sNfcAdapterNxp:Lcom/lge/nfcaddon/NfcAdapterNxp;

.field private static sService:Lcom/lge/nfcaddon/INfcAdapterNxp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/nfcaddon/NfcAdapterNxp;->isBinded:Z

    .line 23
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterNxp;->getNfcAdapterNxpInterface()Lcom/lge/nfcaddon/INfcAdapterNxp;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcaddon/NfcAdapterNxp;->sService:Lcom/lge/nfcaddon/INfcAdapterNxp;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getNfcAdapterNxp()Lcom/lge/nfcaddon/NfcAdapterNxp;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 26
    const-class v1, Lcom/lge/nfcaddon/NfcAdapterNxp;

    monitor-enter v1

    :try_start_4
    const-string v2, "lge.nfc.vendor"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nxp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_33

    move-result v2

    if-nez v2, :cond_14

    .line 41
    :goto_12
    monitor-exit v1

    return-object v0

    .line 31
    :cond_14
    :try_start_14
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterNxp;->sNfcAdapterNxp:Lcom/lge/nfcaddon/NfcAdapterNxp;

    if-eqz v2, :cond_1c

    sget-boolean v2, Lcom/lge/nfcaddon/NfcAdapterNxp;->isBinded:Z

    if-nez v2, :cond_23

    .line 32
    :cond_1c
    new-instance v2, Lcom/lge/nfcaddon/NfcAdapterNxp;

    invoke-direct {v2}, Lcom/lge/nfcaddon/NfcAdapterNxp;-><init>()V

    sput-object v2, Lcom/lge/nfcaddon/NfcAdapterNxp;->sNfcAdapterNxp:Lcom/lge/nfcaddon/NfcAdapterNxp;

    .line 36
    :cond_23
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterNxp;->sService:Lcom/lge/nfcaddon/INfcAdapterNxp;

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterNxp;->sNfcAdapterNxp:Lcom/lge/nfcaddon/NfcAdapterNxp;

    if-nez v2, :cond_36

    .line 37
    :cond_2b
    const-string v2, "NfcNxp"

    const-string v3, "Error : Could not create NfcAdapterNxp Interface or Adapter!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_33

    goto :goto_12

    .line 26
    :catchall_33
    move-exception v0

    monitor-exit v1

    throw v0

    .line 41
    :cond_36
    :try_start_36
    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterNxp;->sNfcAdapterNxp:Lcom/lge/nfcaddon/NfcAdapterNxp;
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_33

    goto :goto_12
.end method

.method private static getNfcAdapterNxpInterface()Lcom/lge/nfcaddon/INfcAdapterNxp;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 45
    const-string v2, "lge.nfc.vendor"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nxp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 55
    .local v0, "binder":Landroid/os/IBinder;
    :goto_f
    return-object v1

    .line 49
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_10
    const-string v2, "nfcvendor"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 50
    .restart local v0    # "binder":Landroid/os/IBinder;
    if-nez v0, :cond_23

    .line 51
    const-string v2, "NfcNxp"

    const-string v3, "nfcnxp binder null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lge/nfcaddon/NfcAdapterNxp;->isBinded:Z

    goto :goto_f

    .line 55
    :cond_23
    invoke-static {v0}, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/INfcAdapterNxp;

    move-result-object v1

    goto :goto_f
.end method


# virtual methods
.method public DefaultRouteSet(Ljava/lang/String;ZZZ)V
    .registers 10
    .param p1, "routeLoc"    # Ljava/lang/String;
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 108
    .local v1, "seID":I
    :try_start_1
    const-string v2, "com.nxp.uicc.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 109
    const/4 v1, 0x2

    .line 118
    :goto_a
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterNxp;->sService:Lcom/lge/nfcaddon/INfcAdapterNxp;

    invoke-interface {v2, v1, p2, p3, p4}, Lcom/lge/nfcaddon/INfcAdapterNxp;->DefaultRouteSet(IZZZ)V

    .line 125
    return-void

    .line 110
    :cond_10
    const-string v2, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 111
    const/4 v1, 0x1

    .line 112
    goto :goto_a

    :cond_1a
    const-string v2, "com.nxp.host.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 113
    const/4 v1, 0x0

    .line 114
    goto :goto_a

    .line 115
    :cond_24
    const-string v2, "NfcNxp"

    const-string v3, "DefaultRouteSet: wrong default route ID"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v2, Ljava/io/IOException;

    const-string v3, "DefaultRouteSet failed: Wrong default route ID"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_33} :catch_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_43

    .line 119
    :catch_33
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcNxp"

    const-string v3, "confsetDefaultRoute failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    new-instance v2, Ljava/io/IOException;

    const-string v3, "confsetDefaultRoute failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_43
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public MifareCLTRouteSet(Ljava/lang/String;ZZZ)V
    .registers 10
    .param p1, "routeLoc"    # Ljava/lang/String;
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 141
    .local v1, "seID":I
    :try_start_1
    const-string v2, "com.nxp.uicc.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 142
    const/4 v1, 0x2

    .line 151
    :goto_a
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterNxp;->sService:Lcom/lge/nfcaddon/INfcAdapterNxp;

    invoke-interface {v2, v1, p2, p3, p4}, Lcom/lge/nfcaddon/INfcAdapterNxp;->MifareCLTRouteSet(IZZZ)V

    .line 158
    return-void

    .line 143
    :cond_10
    const-string v2, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 144
    const/4 v1, 0x1

    .line 145
    goto :goto_a

    :cond_1a
    const-string v2, "com.nxp.host.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 146
    const/4 v1, 0x0

    .line 147
    goto :goto_a

    .line 148
    :cond_24
    const-string v2, "NfcNxp"

    const-string v3, "confMifareCLT: wrong default route ID"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v2, Ljava/io/IOException;

    const-string v3, "confMifareCLT failed: Wrong default route ID"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_33} :catch_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_43

    .line 152
    :catch_33
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcNxp"

    const-string v3, "confMifareCLT failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    new-instance v2, Ljava/io/IOException;

    const-string v3, "confMifareCLT failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_43
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public MifareDesfireRouteSet(Ljava/lang/String;ZZZ)V
    .registers 10
    .param p1, "routeLoc"    # Ljava/lang/String;
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, "seID":I
    :try_start_1
    const-string v2, "com.nxp.uicc.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 74
    const/4 v1, 0x2

    .line 85
    :goto_a
    const-string v2, "NfcNxp"

    const-string v3, "calling Services"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterNxp;->sService:Lcom/lge/nfcaddon/INfcAdapterNxp;

    invoke-interface {v2, v1, p2, p3, p4}, Lcom/lge/nfcaddon/INfcAdapterNxp;->MifareDesfireRouteSet(IZZZ)V

    .line 93
    return-void

    .line 75
    :cond_17
    const-string v2, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 77
    const/4 v1, 0x1

    .line 79
    goto :goto_a

    :cond_21
    const-string v2, "com.nxp.host.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 80
    const/4 v1, 0x0

    .line 81
    goto :goto_a

    .line 82
    :cond_2b
    const-string v2, "NfcNxp"

    const-string v3, "confMifareDesfireProtoRoute: wrong default route ID"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v2, Ljava/io/IOException;

    const-string v3, "confMifareProtoRoute failed: Wrong default route ID"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_3a} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_4a

    .line 87
    :catch_3a
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcNxp"

    const-string v3, "confMifareDesfireProtoRoute failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    new-instance v2, Ljava/io/IOException;

    const-string v3, "confMifareDesfireProtoRoute failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_4a
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getNfcSecureElementService()Lcom/lge/nfcaddon/NfcSecureElement;
    .registers 4

    .prologue
    .line 167
    :try_start_0
    new-instance v1, Lcom/lge/nfcaddon/NfcSecureElement;

    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterNxp;->sService:Lcom/lge/nfcaddon/INfcAdapterNxp;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcAdapterNxp;->getNfcSecureElementInterface()Lcom/lge/nfcaddon/INfcSecureElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lge/nfcaddon/NfcSecureElement;-><init>(Lcom/lge/nfcaddon/INfcSecureElement;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 170
    :goto_b
    return-object v1

    .line 168
    :catch_c
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NfcNxp"

    const-string v2, "getNfcSecureElementService failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    const/4 v1, 0x0

    goto :goto_b
.end method
