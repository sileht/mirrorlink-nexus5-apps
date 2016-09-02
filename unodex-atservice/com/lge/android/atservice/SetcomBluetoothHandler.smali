.class public Lcom/lge/android/atservice/SetcomBluetoothHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomBluetoothHandler.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomBluetoothHandler;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method

.method public static handleCmd([Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v10, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    .local v9, "responseString":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 24
    .local v1, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_110

    .line 25
    const/4 v2, 0x0

    .line 26
    .local v2, "btOffAfterTest":Z
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_14

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 31
    :cond_14
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 33
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz p0, :cond_30

    array-length v11, p0

    if-lez v11, :cond_30

    .line 34
    aget-object v11, p0, v10

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "NM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3d

    .line 35
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v9

    .line 69
    .end local v9    # "responseString":Ljava/lang/String;
    :cond_30
    :goto_30
    if-nez v9, :cond_37

    .line 70
    if-nez p0, :cond_ed

    .line 71
    const-string/jumbo v9, "parameter is null"

    .line 80
    :cond_37
    if-eqz v2, :cond_3c

    .line 81
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 87
    .end local v0    # "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "btOffAfterTest":Z
    :cond_3c
    :goto_3c
    return-object v9

    .line 36
    .restart local v0    # "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v2    # "btOffAfterTest":Z
    .restart local v9    # "responseString":Ljava/lang/String;
    :cond_3d
    aget-object v11, p0, v10

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "NR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_66

    .line 37
    if-eqz v0, :cond_62

    .line 38
    const-string/jumbo v11, "%d"

    new-array v12, v13, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "responseString":Ljava/lang/String;
    goto :goto_30

    .line 40
    .local v9, "responseString":Ljava/lang/String;
    :cond_62
    const-string/jumbo v9, "0"

    .local v9, "responseString":Ljava/lang/String;
    goto :goto_30

    .line 42
    .local v9, "responseString":Ljava/lang/String;
    :cond_66
    array-length v11, p0

    if-le v11, v13, :cond_30

    .line 43
    aget-object v11, p0, v13

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "NM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_30

    .line 44
    if-eqz v0, :cond_30

    .line 45
    const/4 v8, -0x1

    .line 47
    .local v8, "pairedDevNum":I
    const/4 v11, 0x0

    :try_start_7c
    aget-object v11, p0, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/NumberFormatException; {:try_start_7c .. :try_end_81} :catch_a2

    move-result v8

    .line 52
    .end local v9    # "responseString":Ljava/lang/String;
    :goto_82
    if-ltz v8, :cond_bd

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v11

    if-ge v8, v11, :cond_bd

    .line 53
    const/4 v6, 0x0

    .line 54
    .local v6, "n":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "device$iterator":Ljava/util/Iterator;
    :goto_8f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 55
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    if-ne v6, v8, :cond_ba

    .line 56
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    .local v9, "responseString":Ljava/lang/String;
    goto :goto_30

    .line 48
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "device$iterator":Ljava/util/Iterator;
    .end local v6    # "n":I
    .local v9, "responseString":Ljava/lang/String;
    :catch_a2
    move-exception v5

    .line 49
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Invalid parameter: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, p0, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "responseString":Ljava/lang/String;
    goto :goto_82

    .line 59
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "responseString":Ljava/lang/String;
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "device$iterator":Ljava/util/Iterator;
    .restart local v6    # "n":I
    :cond_ba
    add-int/lit8 v6, v6, 0x1

    goto :goto_8f

    .line 61
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "device$iterator":Ljava/util/Iterator;
    .end local v6    # "n":I
    :cond_bd
    if-nez v9, :cond_30

    .line 62
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "parameter is out of range: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, p0, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " (size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "responseString":Ljava/lang/String;
    goto/16 :goto_30

    .line 73
    .end local v8    # "pairedDevNum":I
    .end local v9    # "responseString":Ljava/lang/String;
    :cond_ed
    const-string/jumbo v9, "Invalid parameter: "

    .line 74
    .restart local v9    # "responseString":Ljava/lang/String;
    array-length v11, p0

    :goto_f1
    if-ge v10, v11, :cond_37

    aget-object v7, p0, v10

    .line 75
    .local v7, "p":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 74
    add-int/lit8 v10, v10, 0x1

    goto :goto_f1

    .line 84
    .end local v0    # "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "btOffAfterTest":Z
    .end local v7    # "p":Ljava/lang/String;
    .local v9, "responseString":Ljava/lang/String;
    :cond_110
    const-string/jumbo v9, "Couldn\'t get BluetoothAdapter"

    .local v9, "responseString":Ljava/lang/String;
    goto/16 :goto_3c
.end method
