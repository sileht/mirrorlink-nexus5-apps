.class public Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;
.super Ljava/lang/Object;
.source "FramebufferUpdateThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;,
        Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateHandler;,
        Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$ContextUpdateHandler;,
        Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;
    }
.end annotation


# static fields
.field private static final MSG_FRAMEBUFFER_UPDATE:I = 0x1

.field private static final MSG_GET_CONTEXT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MirrorLink_VNC"


# instance fields
.field private framebuffer:Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;

.field initFramebuffer:Z

.field mContextHandler:Landroid/os/Handler;

.field mContextInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/mirrorlink/vnc/lib/ContextInformation;",
            ">;"
        }
    .end annotation
.end field

.field mContextThread:Landroid/os/HandlerThread;

.field private mCurrentRemoteBuffer:[B

.field mFbUpdateHandler:Landroid/os/Handler;

.field private mFbUpdateLock:Ljava/lang/Object;

.field mFbUpdateThread:Landroid/os/HandlerThread;

.field private mForceDesktopSize:Z

.field private mRectRaw:Lcom/lge/mirrorlink/vnc/lib/RawRect;

.field private mRectRle:Lcom/lge/mirrorlink/vnc/lib/RleRect;

.field private mRemoteBuffer1:[B

.field private mRemoteBuffer2:[B

.field private mRemoteSizeCurrent:Landroid/graphics/Point;

.field private mRemoteSizeLast:Landroid/graphics/Point;

.field private mWidthHeightSwitched:Z

.field private rectList:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

.field protected server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

.field protected session:Lcom/lge/mirrorlink/vnc/lib/VNCSession;


# direct methods
.method static synthetic -wrap0(Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;ZIIII)V
    .registers 6
    .param p1, "incremental"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->framebufferUpdateRequest(ZIIII)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;)V
    .registers 1

    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->updateContextInfo()V

    return-void
.end method

.method public constructor <init>(Lcom/lge/mirrorlink/vnc/lib/VNCServer;Lcom/lge/mirrorlink/vnc/lib/VNCSession;)V
    .registers 6
    .param p1, "server"    # Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    .param p2, "session"    # Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    .line 54
    iput-boolean v1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->initFramebuffer:Z

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mFbUpdateLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    .line 65
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeLast:Landroid/graphics/Point;

    .line 69
    iput-boolean v1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mForceDesktopSize:Z

    .line 259
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;-><init>(Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->rectList:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

    .line 76
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    .line 77
    iput-object p2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->session:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    .line 79
    invoke-direct {p0}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->initialize()V

    .line 81
    invoke-static {}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->init()V

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "VNC-FramebufferUpdate"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mFbUpdateThread:Landroid/os/HandlerThread;

    .line 84
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mFbUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 85
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mFbUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateHandler;

    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mFbUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateHandler;-><init>(Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mFbUpdateHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "VNC-GetContext"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextThread:Landroid/os/HandlerThread;

    .line 89
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextThread:Landroid/os/HandlerThread;

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 90
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$ContextUpdateHandler;

    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$ContextUpdateHandler;-><init>(Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method private addContextInformationRect(Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;)V
    .registers 8
    .param p1, "list"    # Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

    .prologue
    .line 670
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    monitor-enter v3

    .line 671
    :try_start_3
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ctxInfo$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    .line 672
    .local v0, "ctxInfo":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->popSigSendSwitchToClientNativeUI()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 673
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v4, "needSendSwitchToClientNativeUI: true"

    invoke-static {v2, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-wide v4, 0xf000ffffL

    iput-wide v4, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->appCategory:J

    .line 676
    :cond_2d
    new-instance v2, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;

    invoke-direct {v2, v0}, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;-><init>(Lcom/lge/mirrorlink/vnc/lib/ContextInformation;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;->add(ILjava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_37

    goto :goto_9

    .line 670
    .end local v0    # "ctxInfo":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    .end local v1    # "ctxInfo$iterator":Ljava/util/Iterator;
    :catchall_37
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "ctxInfo$iterator":Ljava/util/Iterator;
    :cond_3a
    monitor-exit v3

    .line 668
    return-void
.end method

.method private addContextInformationRectDump(Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;)V
    .registers 49
    .param p1, "list"    # Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

    .prologue
    .line 942
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v44

    .line 943
    .local v44, "winMgr":Landroid/os/IBinder;
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v38, v0

    const-string/jumbo v6, "windows"

    const/4 v9, 0x0

    aput-object v6, v38, v9

    .line 944
    .local v38, "params":[Ljava/lang/String;
    const/16 v34, 0x0

    .line 945
    .local v34, "fos":Ljava/io/FileOutputStream;
    const-string/jumbo v32, "window"

    .line 947
    .local v32, "filename":Ljava/lang/String;
    :try_start_17
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v6}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v9, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v6, v0, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v34

    .line 948
    .local v34, "fos":Ljava/io/FileOutputStream;
    invoke-virtual/range {v34 .. v34}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-interface {v0, v6, v1}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_31} :catch_ef
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_31} :catch_d9
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_31} :catch_c3
    .catchall {:try_start_17 .. :try_end_31} :catchall_105

    .line 956
    if-eqz v34, :cond_36

    .line 958
    :try_start_33
    invoke-virtual/range {v34 .. v34}, Ljava/io/FileOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_c0

    .line 964
    .end local v34    # "fos":Ljava/io/FileOutputStream;
    :cond_36
    :goto_36
    const/16 v30, 0x0

    .line 966
    .local v30, "dis":Ljava/io/DataInputStream;
    :try_start_38
    new-instance v31, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v6}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-direct {v0, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_4d} :catch_4ff
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_4d} :catch_502
    .catchall {:try_start_38 .. :try_end_4d} :catchall_4fd

    .line 967
    .end local v30    # "dis":Ljava/io/DataInputStream;
    .local v31, "dis":Ljava/io/DataInputStream;
    const/16 v37, 0x0

    .line 968
    .local v37, "line":Ljava/lang/String;
    const/16 v45, 0x0

    .line 969
    .local v45, "winnum":Ljava/lang/String;
    const/4 v8, 0x0

    .line 970
    .local v8, "title":Ljava/lang/String;
    const/4 v7, 0x0

    .line 971
    .local v7, "pkgName":Ljava/lang/String;
    const/16 v43, 0x0

    .line 972
    .local v43, "visible":Ljava/lang/String;
    const/16 v40, 0x0

    .line 973
    .local v40, "size":Ljava/lang/String;
    const/16 v20, 0x0

    .line 974
    .local v20, "x":I
    const/16 v21, 0x0

    .line 975
    .local v21, "y":I
    const/16 v22, 0x0

    .line 976
    .local v22, "w":I
    const/16 v23, 0x0

    .line 977
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    .end local v37    # "line":Ljava/lang/String;
    .end local v40    # "size":Ljava/lang/String;
    .end local v43    # "visible":Ljava/lang/String;
    .end local v45    # "winnum":Ljava/lang/String;
    .local v23, "h":I
    :cond_5f
    :goto_5f
    :try_start_5f
    invoke-virtual/range {v31 .. v31}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v37

    .local v37, "line":Ljava/lang/String;
    if-eqz v37, :cond_4ed

    .line 978
    const-string/jumbo v6, "  Window #"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10e

    .line 979
    const/16 v6, 0xa

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v45

    .line 980
    .local v45, "winnum":Ljava/lang/String;
    const-string/jumbo v6, " "

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v9, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v45

    .line 981
    const-string/jumbo v6, "[ {}]"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v42

    .line 982
    .local v42, "values":[Ljava/lang/String;
    const/4 v6, 0x7

    aget-object v8, v42, v6

    .line 983
    .local v8, "title":Ljava/lang/String;
    const/4 v7, 0x0

    .line 984
    .restart local v7    # "pkgName":Ljava/lang/String;
    const/16 v43, 0x0

    .line 985
    .restart local v43    # "visible":Ljava/lang/String;
    const/16 v40, 0x0

    .line 1002
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    .end local v42    # "values":[Ljava/lang/String;
    .end local v43    # "visible":Ljava/lang/String;
    .end local v45    # "winnum":Ljava/lang/String;
    :cond_99
    :goto_99
    if-eqz v45, :cond_5f

    if-eqz v7, :cond_5f

    if-eqz v43, :cond_5f

    if-eqz v40, :cond_5f

    .line 1003
    const-string/jumbo v6, "true"

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b7

    const-string/jumbo v6, "0"

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b4
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_b4} :catch_367
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_b4} :catch_451
    .catchall {:try_start_5f .. :try_end_b4} :catchall_4e4

    move-result v6

    if-eqz v6, :cond_184

    .line 1078
    :cond_b7
    :goto_b7
    const/16 v45, 0x0

    .line 1079
    .local v45, "winnum":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1080
    .restart local v7    # "pkgName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1081
    .local v8, "title":Ljava/lang/String;
    const/16 v43, 0x0

    .line 1082
    .restart local v43    # "visible":Ljava/lang/String;
    const/16 v40, 0x0

    .restart local v40    # "size":Ljava/lang/String;
    goto :goto_5f

    .line 959
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    .end local v20    # "x":I
    .end local v21    # "y":I
    .end local v22    # "w":I
    .end local v23    # "h":I
    .end local v31    # "dis":Ljava/io/DataInputStream;
    .end local v37    # "line":Ljava/lang/String;
    .end local v40    # "size":Ljava/lang/String;
    .end local v43    # "visible":Ljava/lang/String;
    .end local v45    # "winnum":Ljava/lang/String;
    .restart local v34    # "fos":Ljava/io/FileOutputStream;
    :catch_c0
    move-exception v36

    .local v36, "ioe":Ljava/io/IOException;
    goto/16 :goto_36

    .line 953
    .end local v34    # "fos":Ljava/io/FileOutputStream;
    .end local v36    # "ioe":Ljava/io/IOException;
    :catch_c3
    move-exception v39

    .line 954
    .local v39, "re":Landroid/os/RemoteException;
    :try_start_c4
    const-string/jumbo v6, "MirrorLink_VNC"

    const-string/jumbo v9, "RemoteException:"

    move-object/from16 v0, v39

    invoke-static {v6, v9, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_cf
    .catchall {:try_start_c4 .. :try_end_cf} :catchall_105

    .line 956
    if-eqz v34, :cond_36

    .line 958
    :try_start_d1
    invoke-virtual/range {v34 .. v34}, Ljava/io/FileOutputStream;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d6

    goto/16 :goto_36

    .line 959
    :catch_d6
    move-exception v36

    .restart local v36    # "ioe":Ljava/io/IOException;
    goto/16 :goto_36

    .line 951
    .end local v36    # "ioe":Ljava/io/IOException;
    .end local v39    # "re":Landroid/os/RemoteException;
    :catch_d9
    move-exception v36

    .line 952
    .restart local v36    # "ioe":Ljava/io/IOException;
    :try_start_da
    const-string/jumbo v6, "MirrorLink_VNC"

    const-string/jumbo v9, "IOException:"

    move-object/from16 v0, v36

    invoke-static {v6, v9, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e5
    .catchall {:try_start_da .. :try_end_e5} :catchall_105

    .line 956
    if-eqz v34, :cond_36

    .line 958
    :try_start_e7
    invoke-virtual/range {v34 .. v34}, Ljava/io/FileOutputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_ec

    goto/16 :goto_36

    .line 959
    :catch_ec
    move-exception v36

    goto/16 :goto_36

    .line 949
    .end local v36    # "ioe":Ljava/io/IOException;
    :catch_ef
    move-exception v33

    .line 950
    .local v33, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_f0
    const-string/jumbo v6, "MirrorLink_VNC"

    const-string/jumbo v9, "FileNotFoundException:"

    move-object/from16 v0, v33

    invoke-static {v6, v9, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_fb
    .catchall {:try_start_f0 .. :try_end_fb} :catchall_105

    .line 956
    if-eqz v34, :cond_36

    .line 958
    :try_start_fd
    invoke-virtual/range {v34 .. v34}, Ljava/io/FileOutputStream;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_102

    goto/16 :goto_36

    .line 959
    :catch_102
    move-exception v36

    .restart local v36    # "ioe":Ljava/io/IOException;
    goto/16 :goto_36

    .line 955
    .end local v33    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v36    # "ioe":Ljava/io/IOException;
    :catchall_105
    move-exception v6

    .line 956
    if-eqz v34, :cond_10b

    .line 958
    :try_start_108
    invoke-virtual/range {v34 .. v34}, Ljava/io/FileOutputStream;->close()V
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_10b} :catch_10c

    .line 955
    :cond_10b
    :goto_10b
    throw v6

    .line 959
    :catch_10c
    move-exception v36

    .restart local v36    # "ioe":Ljava/io/IOException;
    goto :goto_10b

    .line 986
    .end local v36    # "ioe":Ljava/io/IOException;
    .restart local v20    # "x":I
    .restart local v21    # "y":I
    .restart local v22    # "w":I
    .restart local v23    # "h":I
    .restart local v31    # "dis":Ljava/io/DataInputStream;
    .restart local v37    # "line":Ljava/lang/String;
    :cond_10e
    :try_start_10e
    const-string/jumbo v6, " package="

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13a

    .line 987
    const-string/jumbo v6, " package="

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v35

    .line 988
    .local v35, "idx":I
    if-lez v35, :cond_99

    .line 989
    add-int/lit8 v6, v35, 0x9

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 990
    .local v7, "pkgName":Ljava/lang/String;
    const-string/jumbo v6, " "

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_99

    .line 992
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v35    # "idx":I
    :cond_13a
    const-string/jumbo v6, "    mHasSurface="

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15f

    .line 993
    const/16 v6, 0x10

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v43

    .line 994
    .local v43, "visible":Ljava/lang/String;
    const-string/jumbo v6, " "

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v9, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_99

    .line 995
    .end local v43    # "visible":Ljava/lang/String;
    :cond_15f
    const-string/jumbo v6, "    mFrame="

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 996
    const/16 v6, 0xb

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v40

    .line 997
    .local v40, "size":Ljava/lang/String;
    const-string/jumbo v6, " "

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v9, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v40

    goto/16 :goto_99

    .line 1003
    .end local v40    # "size":Ljava/lang/String;
    :cond_184
    const-string/jumbo v6, "Toast"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b7

    .line 1004
    const-string/jumbo v6, "MirrorLink_VNC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "num:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v45

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  package:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " visible:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v43

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v40

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const-string/jumbo v6, "]["

    const-string/jumbo v9, " "

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    .line 1006
    .restart local v40    # "size":Ljava/lang/String;
    const-string/jumbo v6, "]"

    const-string/jumbo v9, " "

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    .line 1007
    const-string/jumbo v6, "["

    const-string/jumbo v9, " "

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    .line 1008
    const-string/jumbo v6, ","

    const-string/jumbo v9, " "

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    .line 1009
    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    .line 1010
    .local v41, "sizes":[Ljava/lang/String;
    move-object/from16 v0, v41

    array-length v6, v0

    const/4 v9, 0x4

    if-ne v6, v9, :cond_2bc

    .line 1011
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    const/4 v9, 0x0

    aget-object v9, v41, v9

    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->calculateRemoteX(I)I

    move-result v20

    .line 1012
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    const/4 v9, 0x1

    aget-object v9, v41, v9

    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->calculateRemoteY(I)I

    move-result v21

    .line 1013
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    const/4 v9, 0x2

    aget-object v9, v41, v9

    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->calculateRemoteX(I)I

    move-result v22

    .line 1014
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    const/4 v9, 0x3

    aget-object v9, v41, v9

    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->calculateRemoteY(I)I

    move-result v23

    .line 1016
    if-gez v20, :cond_26e

    .line 1017
    add-int v22, v22, v20

    .line 1018
    const/16 v20, 0x0

    .line 1020
    :cond_26e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    move/from16 v0, v20

    if-le v0, v6, :cond_280

    .line 1021
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    .line 1023
    :cond_280
    if-gez v21, :cond_286

    .line 1024
    add-int v23, v23, v21

    .line 1025
    const/16 v21, 0x0

    .line 1027
    :cond_286
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    move/from16 v0, v21

    if-le v0, v6, :cond_298

    .line 1028
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    .line 1030
    :cond_298
    add-int v6, v20, v22

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    if-le v6, v9, :cond_2aa

    .line 1031
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int v22, v6, v20

    .line 1033
    :cond_2aa
    add-int v6, v21, v23

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    if-le v6, v9, :cond_2bc

    .line 1034
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v23, v6, v21

    .line 1037
    :cond_2bc
    const/16 v24, 0x0

    .line 1038
    .local v24, "added":Z
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v26

    .line 1039
    .local v26, "appList":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-eqz v26, :cond_3be

    .line 1040
    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v25

    .line 1041
    .local v25, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz v25, :cond_3be

    .line 1042
    const-string/jumbo v6, "MirrorLink_VNC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "app:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v25 .. v25}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  x:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " y:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " w:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " h:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    invoke-virtual/range {v25 .. v25}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getContextInformation()Ljava/util/List;

    move-result-object v29

    .line 1044
    .local v29, "ctxInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/vnc/lib/ContextInformation;>;"
    if-eqz v29, :cond_37b

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_37b

    .line 1045
    invoke-virtual/range {v25 .. v25}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->updateContextInformation()V

    .line 1046
    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "ctxInfo$iterator":Ljava/util/Iterator;
    :goto_331
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3bc

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    .line 1047
    .local v27, "ctxInfo":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    const-string/jumbo v6, "MirrorLink_VNC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "add ctx by app:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    new-instance v6, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;-><init>(Lcom/lge/mirrorlink/vnc/lib/ContextInformation;)V

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v6}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;->add(ILjava/lang/Object;)V
    :try_end_366
    .catch Ljava/io/FileNotFoundException; {:try_start_10e .. :try_end_366} :catch_367
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_366} :catch_451
    .catchall {:try_start_10e .. :try_end_366} :catchall_4e4

    goto :goto_331

    .line 1085
    .end local v24    # "added":Z
    .end local v25    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .end local v26    # "appList":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    .end local v27    # "ctxInfo":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    .end local v28    # "ctxInfo$iterator":Ljava/util/Iterator;
    .end local v29    # "ctxInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/vnc/lib/ContextInformation;>;"
    .end local v37    # "line":Ljava/lang/String;
    .end local v40    # "size":Ljava/lang/String;
    .end local v41    # "sizes":[Ljava/lang/String;
    :catch_367
    move-exception v33

    .restart local v33    # "fnfe":Ljava/io/FileNotFoundException;
    move-object/from16 v30, v31

    .line 1086
    .end local v20    # "x":I
    .end local v21    # "y":I
    .end local v22    # "w":I
    .end local v23    # "h":I
    .end local v31    # "dis":Ljava/io/DataInputStream;
    :goto_36a
    :try_start_36a
    const-string/jumbo v6, "MirrorLink_VNC"

    const-string/jumbo v9, "FileNotFoundException:"

    move-object/from16 v0, v33

    invoke-static {v6, v9, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_375
    .catchall {:try_start_36a .. :try_end_375} :catchall_4fd

    .line 1090
    if-eqz v30, :cond_37a

    .line 1092
    :try_start_377
    invoke-virtual/range {v30 .. v30}, Ljava/io/DataInputStream;->close()V
    :try_end_37a
    .catch Ljava/io/IOException; {:try_start_377 .. :try_end_37a} :catch_4f8

    .line 939
    .end local v33    # "fnfe":Ljava/io/FileNotFoundException;
    :cond_37a
    :goto_37a
    return-void

    .line 1051
    .restart local v20    # "x":I
    .restart local v21    # "y":I
    .restart local v22    # "w":I
    .restart local v23    # "h":I
    .restart local v24    # "added":Z
    .restart local v25    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .restart local v26    # "appList":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    .restart local v29    # "ctxInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/vnc/lib/ContextInformation;>;"
    .restart local v31    # "dis":Ljava/io/DataInputStream;
    .restart local v37    # "line":Ljava/lang/String;
    .restart local v40    # "size":Ljava/lang/String;
    .restart local v41    # "sizes":[Ljava/lang/String;
    :cond_37b
    :try_start_37b
    const-string/jumbo v6, "MirrorLink_VNC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "add default ctx:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v25

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getDefaultContextInformation(IIII)Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    new-instance v6, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;

    move-object/from16 v0, v25

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getDefaultContextInformation(IIII)Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;-><init>(Lcom/lge/mirrorlink/vnc/lib/ContextInformation;)V

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v6}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;->add(ILjava/lang/Object;)V

    .line 1054
    :cond_3bc
    const/16 v24, 0x1

    .line 1057
    .end local v25    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .end local v29    # "ctxInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/vnc/lib/ContextInformation;>;"
    :cond_3be
    if-nez v24, :cond_b7

    .line 1058
    if-eqz v8, :cond_3d6

    const-string/jumbo v6, "SurfaceView"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d6

    if-eqz v7, :cond_b7

    const-string/jumbo v6, "com.android.systemui"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b7

    .line 1060
    :cond_3d6
    if-eqz v8, :cond_469

    const-string/jumbo v6, "StatusBar"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_469

    if-eqz v7, :cond_469

    const-string/jumbo v6, "com.android.systemui"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_469

    .line 1061
    const-string/jumbo v6, "MirrorLink_VNC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "app:StatusBar  x:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " y:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " w:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " h:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    new-instance v46, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;

    new-instance v6, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    const-wide/16 v10, 0x80

    .line 1063
    const-wide/16 v12, 0x80

    .line 1062
    const/4 v9, 0x0

    .line 1063
    const-wide/32 v14, 0x10003

    .line 1064
    const-wide/16 v16, 0x20

    const-wide/16 v18, 0x0

    .line 1062
    invoke-direct/range {v6 .. v23}, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJJJIIII)V

    move-object/from16 v0, v46

    invoke-direct {v0, v6}, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;-><init>(Lcom/lge/mirrorlink/vnc/lib/ContextInformation;)V

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v6, v1}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;->add(ILjava/lang/Object;)V
    :try_end_44f
    .catch Ljava/io/FileNotFoundException; {:try_start_37b .. :try_end_44f} :catch_367
    .catch Ljava/io/IOException; {:try_start_37b .. :try_end_44f} :catch_451
    .catchall {:try_start_37b .. :try_end_44f} :catchall_4e4

    goto/16 :goto_b7

    .line 1087
    .end local v24    # "added":Z
    .end local v26    # "appList":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    .end local v37    # "line":Ljava/lang/String;
    .end local v40    # "size":Ljava/lang/String;
    .end local v41    # "sizes":[Ljava/lang/String;
    :catch_451
    move-exception v36

    .restart local v36    # "ioe":Ljava/io/IOException;
    move-object/from16 v30, v31

    .line 1088
    .end local v20    # "x":I
    .end local v21    # "y":I
    .end local v22    # "w":I
    .end local v23    # "h":I
    .end local v31    # "dis":Ljava/io/DataInputStream;
    :goto_454
    :try_start_454
    const-string/jumbo v6, "MirrorLink_VNC"

    const-string/jumbo v9, "IOException:"

    move-object/from16 v0, v36

    invoke-static {v6, v9, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_45f
    .catchall {:try_start_454 .. :try_end_45f} :catchall_4fd

    .line 1090
    if-eqz v30, :cond_37a

    .line 1092
    :try_start_461
    invoke-virtual/range {v30 .. v30}, Ljava/io/DataInputStream;->close()V
    :try_end_464
    .catch Ljava/io/IOException; {:try_start_461 .. :try_end_464} :catch_466

    goto/16 :goto_37a

    .line 1093
    :catch_466
    move-exception v36

    goto/16 :goto_37a

    .line 1066
    .end local v36    # "ioe":Ljava/io/IOException;
    .restart local v20    # "x":I
    .restart local v21    # "y":I
    .restart local v22    # "w":I
    .restart local v23    # "h":I
    .restart local v24    # "added":Z
    .restart local v26    # "appList":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    .restart local v31    # "dis":Ljava/io/DataInputStream;
    .restart local v37    # "line":Ljava/lang/String;
    .restart local v40    # "size":Ljava/lang/String;
    .restart local v41    # "sizes":[Ljava/lang/String;
    :cond_469
    if-eqz v8, :cond_b7

    :try_start_46b
    const-string/jumbo v6, "NavigationBar"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b7

    if-eqz v7, :cond_b7

    const-string/jumbo v6, "com.android.systemui"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 1067
    const-string/jumbo v6, "MirrorLink_VNC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "app:NavigationBar  x:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " y:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " w:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " h:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    new-instance v46, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;

    new-instance v6, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    const-wide/16 v10, 0x80

    .line 1069
    const-wide/16 v12, 0x80

    .line 1068
    const/4 v9, 0x0

    .line 1069
    const-wide/32 v14, 0x10002

    .line 1070
    const-wide/16 v16, 0x20

    const-wide/16 v18, 0x0

    .line 1068
    invoke-direct/range {v6 .. v23}, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJJJIIII)V

    move-object/from16 v0, v46

    invoke-direct {v0, v6}, Lcom/lge/mirrorlink/vnc/lib/ContextInformationRect;-><init>(Lcom/lge/mirrorlink/vnc/lib/ContextInformation;)V

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v6, v1}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;->add(ILjava/lang/Object;)V
    :try_end_4e2
    .catch Ljava/io/FileNotFoundException; {:try_start_46b .. :try_end_4e2} :catch_367
    .catch Ljava/io/IOException; {:try_start_46b .. :try_end_4e2} :catch_451
    .catchall {:try_start_46b .. :try_end_4e2} :catchall_4e4

    goto/16 :goto_b7

    .line 1089
    .end local v24    # "added":Z
    .end local v26    # "appList":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    .end local v37    # "line":Ljava/lang/String;
    .end local v40    # "size":Ljava/lang/String;
    .end local v41    # "sizes":[Ljava/lang/String;
    :catchall_4e4
    move-exception v6

    move-object/from16 v30, v31

    .line 1090
    .end local v20    # "x":I
    .end local v21    # "y":I
    .end local v22    # "w":I
    .end local v23    # "h":I
    .end local v31    # "dis":Ljava/io/DataInputStream;
    :goto_4e7
    if-eqz v30, :cond_4ec

    .line 1092
    :try_start_4e9
    invoke-virtual/range {v30 .. v30}, Ljava/io/DataInputStream;->close()V
    :try_end_4ec
    .catch Ljava/io/IOException; {:try_start_4e9 .. :try_end_4ec} :catch_4fb

    .line 1089
    :cond_4ec
    :goto_4ec
    throw v6

    .line 1090
    .restart local v20    # "x":I
    .restart local v21    # "y":I
    .restart local v22    # "w":I
    .restart local v23    # "h":I
    .restart local v31    # "dis":Ljava/io/DataInputStream;
    .restart local v37    # "line":Ljava/lang/String;
    :cond_4ed
    if-eqz v31, :cond_4f2

    .line 1092
    :try_start_4ef
    invoke-virtual/range {v31 .. v31}, Ljava/io/DataInputStream;->close()V
    :try_end_4f2
    .catch Ljava/io/IOException; {:try_start_4ef .. :try_end_4f2} :catch_4f6

    :cond_4f2
    :goto_4f2
    move-object/from16 v30, v31

    .end local v31    # "dis":Ljava/io/DataInputStream;
    .local v30, "dis":Ljava/io/DataInputStream;
    goto/16 :goto_37a

    .line 1093
    .end local v30    # "dis":Ljava/io/DataInputStream;
    .restart local v31    # "dis":Ljava/io/DataInputStream;
    :catch_4f6
    move-exception v36

    .restart local v36    # "ioe":Ljava/io/IOException;
    goto :goto_4f2

    .end local v20    # "x":I
    .end local v21    # "y":I
    .end local v22    # "w":I
    .end local v23    # "h":I
    .end local v31    # "dis":Ljava/io/DataInputStream;
    .end local v36    # "ioe":Ljava/io/IOException;
    .end local v37    # "line":Ljava/lang/String;
    .restart local v33    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_4f8
    move-exception v36

    .restart local v36    # "ioe":Ljava/io/IOException;
    goto/16 :goto_37a

    .end local v33    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v36    # "ioe":Ljava/io/IOException;
    :catch_4fb
    move-exception v36

    .restart local v36    # "ioe":Ljava/io/IOException;
    goto :goto_4ec

    .line 1089
    .end local v36    # "ioe":Ljava/io/IOException;
    :catchall_4fd
    move-exception v6

    goto :goto_4e7

    .line 1085
    .local v30, "dis":Ljava/io/DataInputStream;
    :catch_4ff
    move-exception v33

    .restart local v33    # "fnfe":Ljava/io/FileNotFoundException;
    goto/16 :goto_36a

    .line 1087
    .end local v33    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_502
    move-exception v36

    .restart local v36    # "ioe":Ljava/io/IOException;
    goto/16 :goto_454
.end method

.method public static checkDesktopSizeChanged(Landroid/graphics/Point;Landroid/graphics/Point;III)Z
    .registers 6
    .param p0, "remoteSizeCurrent"    # Landroid/graphics/Point;
    .param p1, "remoteSizeLast"    # Landroid/graphics/Point;
    .param p2, "screenW"    # I
    .param p3, "screenH"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private detectChangedArea(III)Landroid/graphics/Rect;
    .registers 11
    .param p1, "bytesPerPixel"    # I
    .param p2, "requestedWidth"    # I
    .param p3, "requestedHeight"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 631
    const/4 v0, 0x0

    .line 633
    .local v0, "change":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer1:[B

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer2:[B

    if-nez v2, :cond_c

    .line 634
    :cond_b
    return-object v3

    .line 636
    :cond_c
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer1:[B

    .line 637
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer2:[B

    iget-object v4, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 638
    iget-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 636
    invoke-static {v2, v3, v4, v5, p1}, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->detectChangedAreaNative([B[BIII)[I

    move-result-object v1

    .line 639
    .local v1, "rect":[I
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "change":Landroid/graphics/Rect;
    aget v2, v1, v6

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v5, v1, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 649
    .local v0, "change":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, p2, -0x1

    if-ge v2, v3, :cond_38

    .line 650
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 652
    :cond_38
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, p3, -0x1

    if-ge v2, v3, :cond_44

    .line 653
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 657
    :cond_44
    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-gt v2, p2, :cond_4c

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-le v2, p3, :cond_54

    .line 658
    :cond_4c
    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 659
    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 660
    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 661
    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 664
    :cond_54
    return-object v0
.end method

.method private declared-synchronized framebufferUpdateRequest(ZIIII)V
    .registers 17
    .param p1, "incremental"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 316
    :try_start_1
    invoke-static {}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->stopRequest()V

    .line 317
    invoke-static {}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->startBeforeWrite()V

    .line 318
    iget-object v7, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mFbUpdateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_70

    .line 319
    :try_start_a
    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->rectList:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

    invoke-virtual {v6}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;->clear()V

    .line 320
    :goto_f
    iget-boolean v6, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->initFramebuffer:Z

    if-eqz v6, :cond_19

    .line 321
    invoke-direct/range {p0 .. p5}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->updateRectList(ZIIII)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 327
    :cond_19
    invoke-static {}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->stopBeforeWrite()V

    .line 329
    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->rectList:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

    invoke-virtual {v6}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 330
    const-string/jumbo v6, "MirrorLink_VNC"

    const-string/jumbo v8, "encode: empty rectangles!! add a empty rectangle"

    invoke-static {v6, v8}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->rectList:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

    invoke-static {}, Lcom/lge/mirrorlink/vnc/lib/RawRect;->getEmptyRect()Lcom/lge/mirrorlink/vnc/lib/RawRect;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_36
    const/4 v3, 0x1

    .line 335
    .local v3, "rectIndex":I
    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->rectList:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "r$iterator":Ljava/util/Iterator;
    move v4, v3

    .end local v3    # "rectIndex":I
    .local v4, "rectIndex":I
    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mirrorlink/vnc/lib/Rectangle;

    .line 336
    .local v1, "r":Lcom/lge/mirrorlink/vnc/lib/Rectangle;
    const-string/jumbo v6, "MirrorLink_VNC"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "rectIndex":I
    .restart local v3    # "rectIndex":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string/jumbo v9, ": "

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-static {v6, v8}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v3

    .end local v3    # "rectIndex":I
    .restart local v4    # "rectIndex":I
    goto :goto_3e

    .line 324
    .end local v1    # "r":Lcom/lge/mirrorlink/vnc/lib/Rectangle;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    .end local v4    # "rectIndex":I
    :cond_67
    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->rectList:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

    invoke-virtual {v6}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;->clear()V
    :try_end_6c
    .catchall {:try_start_a .. :try_end_6c} :catchall_6d

    goto :goto_f

    .line 318
    :catchall_6d
    move-exception v6

    :try_start_6e
    monitor-exit v7

    throw v6
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_70

    :catchall_70
    move-exception v6

    monitor-exit p0

    throw v6

    .line 340
    .restart local v2    # "r$iterator":Ljava/util/Iterator;
    .restart local v4    # "rectIndex":I
    :cond_73
    :try_start_73
    invoke-static {}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->startWrite()V

    .line 341
    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->session:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    iget-object v8, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->rectList:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

    invoke-virtual {v6, v8}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeFramebufferUpdate(Ljava/util/List;)I

    move-result v5

    .line 342
    .local v5, "writeSize":I
    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->session:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    iget-object v8, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    iget-object v9, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mCurrentRemoteBuffer:[B

    invoke-virtual {v6, v8, v9}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->writeContentAttestationResponse(Ljava/util/List;[B)V

    .line 343
    invoke-static {v5}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->stopWrite(I)V

    .line 345
    invoke-static {}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->startRequest()V

    .line 348
    const/4 v0, 0x0

    .line 350
    .local v0, "needToWriteDeviceStatus":Z
    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->rectList:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

    const/16 v8, -0xdf

    invoke-virtual {v6, v8}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;->hasEncodingRect(I)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 351
    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v6}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->updateOrientation()Z

    .line 353
    const/4 v0, 0x1

    .line 357
    :cond_9e
    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v6}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->updateDeviceLock()Z

    move-result v6

    or-int/2addr v0, v6

    .line 358
    .local v0, "needToWriteDeviceStatus":Z
    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v6}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->updateKeyLock()Z

    move-result v6

    or-int/2addr v0, v6

    .line 360
    if-eqz v0, :cond_b4

    .line 361
    iget-object v6, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->writeDeviceStatus(Z)V
    :try_end_b4
    .catchall {:try_start_73 .. :try_end_b4} :catchall_6d

    :cond_b4
    :try_start_b4
    monitor-exit v7
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_70

    monitor-exit p0

    .line 314
    return-void
.end method

.method private initialize()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeLast:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getSystemDisplayWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getSystemDisplayHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 97
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getSystemDisplayWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getSystemDisplayHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 98
    iput-boolean v3, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mForceDesktopSize:Z

    .line 100
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/RawRect;

    invoke-direct {v0}, Lcom/lge/mirrorlink/vnc/lib/RawRect;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRectRaw:Lcom/lge/mirrorlink/vnc/lib/RawRect;

    .line 101
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/RleRect;

    invoke-direct {v0}, Lcom/lge/mirrorlink/vnc/lib/RleRect;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRectRle:Lcom/lge/mirrorlink/vnc/lib/RleRect;

    .line 104
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer1:[B

    if-eqz v0, :cond_3c

    .line 105
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer1:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 107
    :cond_3c
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer2:[B

    if-eqz v0, :cond_45

    .line 108
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer2:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 110
    :cond_45
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getWidthHeightSwitched()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mWidthHeightSwitched:Z

    .line 112
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;

    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getWidthHeightSwitched()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;-><init>(Z)V

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->framebuffer:Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;

    .line 113
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->framebuffer:Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->fbInit()V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->initFramebuffer:Z

    .line 94
    return-void
.end method

.method private updateContextInfo()V
    .registers 71

    .prologue
    .line 683
    const-string/jumbo v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/view/IWindowManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/view/IWindowManagerEx;

    move-result-object v66

    .line 684
    .local v66, "winManager":Lcom/lge/view/IWindowManagerEx;
    const/16 v65, 0x0

    .line 686
    .local v65, "winList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v8, 0x0

    const/4 v10, 0x1

    :try_start_f
    move-object/from16 v0, v66

    invoke-interface {v0, v8, v10}, Lcom/lge/view/IWindowManagerEx;->getWindowInfoList(IZ)Ljava/util/List;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_21

    move-result-object v65

    .line 690
    .end local v65    # "winList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :goto_15
    if-nez v65, :cond_2e

    .line 691
    const-string/jumbo v8, "MirrorLink_VNC"

    const-string/jumbo v10, "updateContextInfo : getWindowInfoList:NULL.. do nothing"

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    return-void

    .line 687
    .restart local v65    # "winList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :catch_21
    move-exception v60

    .line 688
    .local v60, "re":Landroid/os/RemoteException;
    const-string/jumbo v8, "MirrorLink_VNC"

    const-string/jumbo v10, "getWindowInfoList:RemoteException"

    move-object/from16 v0, v60

    invoke-static {v8, v10, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    .line 694
    .end local v60    # "re":Landroid/os/RemoteException;
    .end local v65    # "winList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_2e
    const/16 v63, 0x0

    .line 695
    .local v63, "topPkgName":Ljava/lang/String;
    new-instance v59, Ljava/util/ArrayList;

    invoke-direct/range {v59 .. v59}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v59, "oldCtxList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/vnc/lib/ContextInformation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    move-object/from16 v69, v0

    monitor-enter v69

    .line 697
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    move-object/from16 v0, v59

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 698
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 699
    invoke-interface/range {v65 .. v65}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .end local v63    # "topPkgName":Ljava/lang/String;
    .local v47, "bndl$iterator":Ljava/util/Iterator;
    :cond_50
    :goto_50
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_827

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/os/Bundle;

    .line 700
    .local v46, "bndl":Landroid/os/Bundle;
    const-string/jumbo v8, "WIN_NUM"

    const/4 v10, -0x1

    move-object/from16 v0, v46

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v68

    .line 701
    .local v68, "winnum":I
    const-string/jumbo v8, "SURFACE_LAYER"

    const v10, 0x7fffffff

    move-object/from16 v0, v46

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v58

    .line 702
    .local v58, "layer":I
    const-string/jumbo v8, "TITLE"

    move-object/from16 v0, v46

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 703
    .local v26, "title":Ljava/lang/String;
    const-string/jumbo v8, "PACKAGE"

    move-object/from16 v0, v46

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 704
    .local v25, "pkgName":Ljava/lang/String;
    const-string/jumbo v8, "FRAME_SIZE"

    move-object/from16 v0, v46

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v55

    .line 705
    .local v55, "frameSize":[I
    const-string/jumbo v8, "SHOWN_FRAME_SIZE"

    move-object/from16 v0, v46

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v62

    .line 706
    .local v62, "shownFrameSize":[F
    const-string/jumbo v8, "IS_VISIBLE"

    move-object/from16 v0, v46

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v64

    .line 707
    .local v64, "visible":Z
    const-string/jumbo v8, "IS_WIN_VISIBLE"

    move-object/from16 v0, v46

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v67

    .line 708
    .local v67, "winVisible":Z
    const-string/jumbo v8, "IS_FOCUSED"

    move-object/from16 v0, v46

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v57

    .line 710
    .local v57, "isFocused":Z
    const/4 v8, -0x1

    move/from16 v0, v68

    if-le v0, v8, :cond_50

    if-eqz v55, :cond_50

    if-eqz v62, :cond_50

    .line 711
    new-instance v54, Landroid/graphics/Rect;

    const/4 v8, 0x0

    aget v8, v55, v8

    const/4 v10, 0x1

    aget v10, v55, v10

    const/4 v11, 0x2

    aget v11, v55, v11

    const/4 v12, 0x3

    aget v12, v55, v12

    move-object/from16 v0, v54

    invoke-direct {v0, v8, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 712
    .local v54, "frameRect":Landroid/graphics/Rect;
    new-instance v61, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    const/4 v10, 0x0

    aget v10, v62, v10

    float-to-int v10, v10

    invoke-virtual {v8, v10}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->calculateRemoteX(I)I

    move-result v8

    .line 713
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    const/4 v11, 0x1

    aget v11, v62, v11

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->calculateRemoteX(I)I

    move-result v10

    .line 714
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    const/4 v12, 0x2

    aget v12, v62, v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->calculateRemoteX(I)I

    move-result v11

    .line 715
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    const/4 v13, 0x3

    aget v13, v62, v13

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->calculateRemoteX(I)I

    move-result v12

    .line 712
    move-object/from16 v0, v61

    invoke-direct {v0, v8, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 716
    .local v61, "shownFrameRect":Landroid/graphics/Rect;
    const-string/jumbo v8, "MirrorLink_VNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "winnum:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v68

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " layer:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v58

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " title:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " pkg:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 717
    const-string/jumbo v11, " focus:"

    .line 716
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v57

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 717
    const-string/jumbo v11, " fSize:"

    .line 716
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 717
    invoke-virtual/range {v54 .. v54}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v11

    .line 716
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 717
    const-string/jumbo v11, " sSize:"

    .line 716
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 718
    invoke-virtual/range {v61 .. v61}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v11

    .line 716
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 718
    const-string/jumbo v11, " visible:"

    .line 716
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v64

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 718
    const-string/jumbo v11, " winVisible:"

    .line 716
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v67

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    move-object/from16 v0, v61

    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-gez v8, :cond_197

    .line 721
    const/4 v8, 0x0

    move-object/from16 v0, v61

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 723
    :cond_197
    move-object/from16 v0, v61

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-gez v8, :cond_1a2

    .line 724
    const/4 v8, 0x0

    move-object/from16 v0, v61

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 726
    :cond_1a2
    move-object/from16 v0, v61

    iget v8, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v10}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelWidth()I

    move-result v10

    if-le v8, v10, :cond_1bc

    .line 727
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v8}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelWidth()I

    move-result v8

    move-object/from16 v0, v61

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 729
    :cond_1bc
    move-object/from16 v0, v61

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v10}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelHeight()I

    move-result v10

    if-le v8, v10, :cond_1d6

    .line 730
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v8}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelHeight()I

    move-result v8

    move-object/from16 v0, v61

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 732
    :cond_1d6
    move-object/from16 v0, v61

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    .line 733
    .local v20, "x":I
    move-object/from16 v0, v61

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 734
    .local v21, "y":I
    invoke-virtual/range {v61 .. v61}, Landroid/graphics/Rect;->width()I

    move-result v22

    .line 735
    .local v22, "w":I
    invoke-virtual/range {v61 .. v61}, Landroid/graphics/Rect;->height()I

    move-result v23

    .line 737
    .local v23, "h":I
    if-eqz v68, :cond_24a

    if-eqz v25, :cond_24a

    if-eqz v26, :cond_248

    const-string/jumbo v8, "Toast"

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_248

    const/4 v8, 0x0

    :goto_1fc
    move/from16 v64, v8

    :goto_1fe
    if-eqz v64, :cond_50

    .line 739
    const/16 v56, 0x0

    .local v56, "i":I
    :goto_202
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move/from16 v0, v56

    if-ge v0, v8, :cond_24d

    .line 740
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    move/from16 v0, v56

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    .line 741
    .local v49, "ctx":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    move-object/from16 v0, v49

    iget v8, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->x:I

    move/from16 v0, v20

    if-lt v8, v0, :cond_245

    move-object/from16 v0, v49

    iget v8, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->y:I

    move/from16 v0, v21

    if-lt v8, v0, :cond_245

    move-object/from16 v0, v49

    iget v8, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->w:I

    move/from16 v0, v22

    if-gt v8, v0, :cond_245

    move-object/from16 v0, v49

    iget v8, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->h:I

    move/from16 v0, v23

    if-gt v8, v0, :cond_245

    .line 742
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    move-object/from16 v0, v49

    invoke-interface {v8, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 743
    add-int/lit8 v56, v56, -0x1

    .line 739
    :cond_245
    add-int/lit8 v56, v56, 0x1

    goto :goto_202

    .line 737
    .end local v49    # "ctx":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    .end local v56    # "i":I
    :cond_248
    const/4 v8, 0x1

    goto :goto_1fc

    :cond_24a
    const/16 v64, 0x0

    goto :goto_1fe

    .line 747
    .restart local v56    # "i":I
    :cond_24d
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v45

    .line 748
    .local v45, "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-eqz v45, :cond_259

    invoke-virtual/range {v45 .. v45}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->checkStartingAppFinished()Z

    move-result v8

    if-eqz v8, :cond_2cf

    .line 772
    :cond_259
    const-string/jumbo v8, "com.lge.ime"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30a

    .line 774
    const-string/jumbo v8, "MirrorLink_VNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "app:ime  x:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " y:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " w:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " h:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    new-instance v24, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    const-wide/16 v28, 0x80

    .line 776
    const-wide/16 v30, 0x80

    .line 775
    const/16 v27, 0x0

    .line 776
    const-wide/32 v32, 0x10000

    .line 777
    const-wide/16 v34, 0x20

    const-wide/16 v36, 0x0

    move/from16 v38, v20

    move/from16 v39, v21

    move/from16 v40, v22

    move/from16 v41, v23

    .line 775
    invoke-direct/range {v24 .. v41}, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJJJIIII)V

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-interface {v8, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 779
    move-object/from16 v63, v25

    .local v63, "topPkgName":Ljava/lang/String;
    goto/16 :goto_50

    .line 749
    .end local v63    # "topPkgName":Ljava/lang/String;
    :cond_2cf
    const-string/jumbo v8, "MirrorLink_VNC"

    const-string/jumbo v10, "launchApplication is not finished! add sudo context information !"

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {v45 .. v45}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getStartingPackageName()Ljava/lang/String;
    :try_end_2db
    .catchall {:try_start_3c .. :try_end_2db} :catchall_4bf

    move-result-object v7

    .line 751
    .local v7, "packageName":Ljava/lang/String;
    if-nez v7, :cond_2e0

    monitor-exit v69

    .line 752
    return-void

    .line 754
    :cond_2e0
    :try_start_2e0
    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :try_end_2e5
    .catchall {:try_start_2e0 .. :try_end_2e5} :catchall_4bf

    move-result-object v43

    .line 755
    .local v43, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-nez v43, :cond_2ea

    monitor-exit v69

    .line 756
    return-void

    .line 758
    :cond_2ea
    :try_start_2ea
    invoke-virtual/range {v43 .. v43}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAppId()I

    move-result v9

    .line 759
    .local v9, "appId":I
    new-instance v6, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    .line 762
    const-wide/16 v10, 0xa0

    .line 763
    const-wide/16 v12, 0xa0

    .line 760
    const/4 v8, 0x0

    .line 764
    const-wide/32 v14, 0x10000

    .line 765
    const-wide/32 v16, 0x10000

    .line 766
    const-wide/16 v18, 0x0

    .line 759
    invoke-direct/range {v6 .. v23}, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJJJIIII)V

    .line 768
    .local v6, "ctxInfo":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v8, v10, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_308
    .catchall {:try_start_2ea .. :try_end_308} :catchall_4bf

    monitor-exit v69

    .line 769
    return-void

    .line 780
    .end local v6    # "ctxInfo":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "appId":I
    .end local v43    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_30a
    if-eqz v26, :cond_3a8

    :try_start_30c
    const-string/jumbo v8, "Keyguard"

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3a8

    .line 781
    const-string/jumbo v8, "com.android.keyguard"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 780
    if-eqz v8, :cond_3a8

    .line 783
    const-string/jumbo v8, "MirrorLink_VNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "app:Keyguard  x:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " y:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " w:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " h:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    new-instance v24, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    const-wide/16 v28, 0x0

    .line 785
    const-wide/16 v30, 0x0

    .line 784
    const/16 v27, 0x0

    .line 785
    const-wide/16 v32, 0x0

    .line 786
    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    move/from16 v38, v20

    move/from16 v39, v21

    move/from16 v40, v22

    move/from16 v41, v23

    .line 784
    invoke-direct/range {v24 .. v41}, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJJJIIII)V

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-interface {v8, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v8}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    move/from16 v0, v22

    if-le v0, v8, :cond_50

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v8}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    move/from16 v0, v23

    if-le v0, v8, :cond_50

    .line 789
    move-object/from16 v63, v25

    .restart local v63    # "topPkgName":Ljava/lang/String;
    goto/16 :goto_50

    .line 791
    .end local v63    # "topPkgName":Ljava/lang/String;
    :cond_3a8
    if-eqz v26, :cond_462

    const-string/jumbo v8, "StatusBar"

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_462

    .line 792
    const-string/jumbo v8, "com.android.systemui"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 791
    if-eqz v8, :cond_462

    .line 794
    const-string/jumbo v8, "MirrorLink_VNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "app:StatusBar  x:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " y:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " w:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " h:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v8}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    move/from16 v0, v22

    if-le v0, v8, :cond_442

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v8}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    move/from16 v0, v23

    if-le v0, v8, :cond_442

    .line 797
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    new-instance v24, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    const-wide/16 v28, 0x0

    .line 798
    const-wide/16 v30, 0x0

    .line 797
    const/16 v27, 0x0

    .line 798
    const-wide/16 v32, 0x0

    .line 799
    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    move/from16 v38, v20

    move/from16 v39, v21

    move/from16 v40, v22

    move/from16 v41, v23

    .line 797
    invoke-direct/range {v24 .. v41}, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJJJIIII)V

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-interface {v8, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 802
    :cond_442
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v8}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    move/from16 v0, v22

    if-le v0, v8, :cond_50

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v8}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    move/from16 v0, v23

    if-le v0, v8, :cond_50

    .line 803
    move-object/from16 v63, v25

    .restart local v63    # "topPkgName":Ljava/lang/String;
    goto/16 :goto_50

    .line 805
    .end local v63    # "topPkgName":Ljava/lang/String;
    :cond_462
    if-eqz v26, :cond_4c2

    const-string/jumbo v8, "NavigationBar"

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c2

    .line 806
    const-string/jumbo v8, "com.android.systemui"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 805
    if-eqz v8, :cond_4c2

    .line 808
    const-string/jumbo v8, "MirrorLink_VNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "app:NavigationBar  x:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " y:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " w:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " h:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4bd
    .catchall {:try_start_30c .. :try_end_4bd} :catchall_4bf

    goto/16 :goto_50

    .line 696
    .end local v20    # "x":I
    .end local v21    # "y":I
    .end local v22    # "w":I
    .end local v23    # "h":I
    .end local v25    # "pkgName":Ljava/lang/String;
    .end local v26    # "title":Ljava/lang/String;
    .end local v45    # "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    .end local v46    # "bndl":Landroid/os/Bundle;
    .end local v47    # "bndl$iterator":Ljava/util/Iterator;
    .end local v54    # "frameRect":Landroid/graphics/Rect;
    .end local v55    # "frameSize":[I
    .end local v56    # "i":I
    .end local v57    # "isFocused":Z
    .end local v58    # "layer":I
    .end local v61    # "shownFrameRect":Landroid/graphics/Rect;
    .end local v62    # "shownFrameSize":[F
    .end local v64    # "visible":Z
    .end local v67    # "winVisible":Z
    .end local v68    # "winnum":I
    :catchall_4bf
    move-exception v8

    monitor-exit v69

    throw v8

    .line 815
    .restart local v20    # "x":I
    .restart local v21    # "y":I
    .restart local v22    # "w":I
    .restart local v23    # "h":I
    .restart local v25    # "pkgName":Ljava/lang/String;
    .restart local v26    # "title":Ljava/lang/String;
    .restart local v45    # "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    .restart local v46    # "bndl":Landroid/os/Bundle;
    .restart local v47    # "bndl$iterator":Ljava/util/Iterator;
    .restart local v54    # "frameRect":Landroid/graphics/Rect;
    .restart local v55    # "frameSize":[I
    .restart local v56    # "i":I
    .restart local v57    # "isFocused":Z
    .restart local v58    # "layer":I
    .restart local v61    # "shownFrameRect":Landroid/graphics/Rect;
    .restart local v62    # "shownFrameSize":[F
    .restart local v64    # "visible":Z
    .restart local v67    # "winVisible":Z
    .restart local v68    # "winnum":I
    :cond_4c2
    if-eqz v26, :cond_544

    :try_start_4c4
    const-string/jumbo v8, "com.lge.launcher2/com.lge.launcher2.Launcher"

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_544

    .line 816
    const-string/jumbo v8, "com.lge.launcher2"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 815
    if-eqz v8, :cond_544

    .line 818
    const-string/jumbo v8, "MirrorLink_VNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "app:BluetoothSettings  x:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " y:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " w:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " h:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    new-instance v24, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    const-wide/16 v28, 0x0

    .line 820
    const-wide/16 v30, 0x0

    .line 819
    const/16 v27, 0x0

    .line 820
    const-wide/16 v32, 0x0

    .line 821
    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    move/from16 v38, v20

    move/from16 v39, v21

    move/from16 v40, v22

    move/from16 v41, v23

    .line 819
    invoke-direct/range {v24 .. v41}, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJJJIIII)V

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-interface {v8, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 823
    move-object/from16 v63, v25

    .restart local v63    # "topPkgName":Ljava/lang/String;
    goto/16 :goto_50

    .line 824
    .end local v63    # "topPkgName":Ljava/lang/String;
    :cond_544
    if-eqz v26, :cond_5c6

    const-string/jumbo v8, "com.android.systemui/com.android.systemui.recent.RecentsActivity"

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5c6

    .line 825
    const-string/jumbo v8, "com.android.systemui"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 824
    if-eqz v8, :cond_5c6

    .line 827
    const-string/jumbo v8, "MirrorLink_VNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "app:RecentsActivity  x:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " y:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " w:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " h:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    new-instance v24, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    const-wide/16 v28, 0x0

    .line 829
    const-wide/16 v30, 0x0

    .line 828
    const/16 v27, 0x0

    .line 829
    const-wide/16 v32, 0x0

    .line 830
    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    move/from16 v38, v20

    move/from16 v39, v21

    move/from16 v40, v22

    move/from16 v41, v23

    .line 828
    invoke-direct/range {v24 .. v41}, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJJJIIII)V

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-interface {v8, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 832
    move-object/from16 v63, v25

    .restart local v63    # "topPkgName":Ljava/lang/String;
    goto/16 :goto_50

    .line 833
    .end local v63    # "topPkgName":Ljava/lang/String;
    :cond_5c6
    if-eqz v26, :cond_648

    const-string/jumbo v8, "com.lge.task/com.lge.task.activity.MainActivity"

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_648

    .line 834
    const-string/jumbo v8, "com.lge.task"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 833
    if-eqz v8, :cond_648

    .line 836
    const-string/jumbo v8, "MirrorLink_VNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "app:MainActivity  x:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " y:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " w:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " h:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    new-instance v24, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    const-wide/16 v28, 0x0

    .line 838
    const-wide/16 v30, 0x0

    .line 837
    const/16 v27, 0x0

    .line 838
    const-wide/16 v32, 0x0

    .line 839
    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    move/from16 v38, v20

    move/from16 v39, v21

    move/from16 v40, v22

    move/from16 v41, v23

    .line 837
    invoke-direct/range {v24 .. v41}, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJJJIIII)V

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-interface {v8, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 841
    move-object/from16 v63, v25

    .restart local v63    # "topPkgName":Ljava/lang/String;
    goto/16 :goto_50

    .line 843
    .end local v63    # "topPkgName":Ljava/lang/String;
    :cond_648
    const-string/jumbo v8, "com.carconnectivity.testapp"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_71a

    .line 844
    const-string/jumbo v8, "MirrorLink_VNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "app:com.carconnectivity.testapp  x:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " y:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " w:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " h:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v44

    .line 846
    .local v44, "appList":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-eqz v44, :cond_716

    .line 847
    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v43

    .line 848
    .restart local v43    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz v43, :cond_716

    .line 849
    invoke-virtual/range {v43 .. v43}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->updateContextInformation()V

    .line 850
    invoke-virtual/range {v43 .. v43}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getContextInformation()Ljava/util/List;

    move-result-object v51

    .line 851
    .local v51, "ctxInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/vnc/lib/ContextInformation;>;"
    if-eqz v51, :cond_6e7

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6e7

    .line 852
    invoke-interface/range {v51 .. v51}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v50

    .local v50, "ctxInfo$iterator":Ljava/util/Iterator;
    :goto_6b9
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_716

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    .line 853
    .restart local v6    # "ctxInfo":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    const-string/jumbo v8, "MirrorLink_VNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "add ctx by app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6b9

    .line 857
    .end local v6    # "ctxInfo":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    .end local v50    # "ctxInfo$iterator":Ljava/util/Iterator;
    :cond_6e7
    const-string/jumbo v8, "MirrorLink_VNC"

    const-string/jumbo v10, "add default ctx:"

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    new-instance v24, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    invoke-virtual/range {v43 .. v43}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAppId()I

    move-result v27

    .line 859
    const-wide/16 v28, 0xa0

    .line 860
    const-wide/16 v30, 0xa0

    .line 861
    const-wide/32 v32, -0x10001

    .line 862
    const-wide/16 v34, 0x20

    const-wide/16 v36, 0x0

    move/from16 v38, v20

    move/from16 v39, v21

    move/from16 v40, v22

    move/from16 v41, v23

    .line 858
    invoke-direct/range {v24 .. v41}, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJJJIIII)V

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-interface {v8, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 867
    .end local v43    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .end local v51    # "ctxInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/vnc/lib/ContextInformation;>;"
    :cond_716
    move-object/from16 v63, v25

    .restart local v63    # "topPkgName":Ljava/lang/String;
    goto/16 :goto_50

    .line 869
    .end local v44    # "appList":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    .end local v63    # "topPkgName":Ljava/lang/String;
    :cond_71a
    const/16 v42, 0x0

    .line 870
    .local v42, "added":Z
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v44

    .line 871
    .restart local v44    # "appList":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-eqz v44, :cond_7fe

    .line 872
    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v43

    .line 873
    .restart local v43    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz v43, :cond_7fe

    .line 874
    const-string/jumbo v8, "MirrorLink_VNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v43 .. v43}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "  x:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " y:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " w:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " h:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-virtual/range {v43 .. v43}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->updateContextInformation()V

    .line 876
    invoke-virtual/range {v43 .. v43}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getContextInformation()Ljava/util/List;

    move-result-object v51

    .line 877
    .restart local v51    # "ctxInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/vnc/lib/ContextInformation;>;"
    if-eqz v51, :cond_7bf

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7bf

    .line 878
    invoke-interface/range {v51 .. v51}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v50

    .restart local v50    # "ctxInfo$iterator":Ljava/util/Iterator;
    :goto_791
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7fc

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    .line 879
    .restart local v6    # "ctxInfo":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    const-string/jumbo v8, "MirrorLink_VNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "add ctx by app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_791

    .line 883
    .end local v6    # "ctxInfo":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    .end local v50    # "ctxInfo$iterator":Ljava/util/Iterator;
    :cond_7bf
    const-string/jumbo v8, "MirrorLink_VNC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "add default ctx:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v43

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getDefaultContextInformation(IIII)Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    move-object/from16 v0, v43

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getDefaultContextInformation(IIII)Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    :cond_7fc
    const/16 v42, 0x1

    .line 889
    .end local v43    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .end local v51    # "ctxInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/vnc/lib/ContextInformation;>;"
    :cond_7fe
    move-object/from16 v63, v25

    .line 890
    .restart local v63    # "topPkgName":Ljava/lang/String;
    if-nez v42, :cond_50

    .line 891
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    new-instance v24, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    const-wide/16 v28, 0x0

    .line 892
    const-wide/16 v30, 0x0

    .line 891
    const/16 v27, 0x0

    .line 892
    const-wide/16 v32, 0x0

    .line 893
    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    move/from16 v38, v20

    move/from16 v39, v21

    move/from16 v40, v22

    move/from16 v41, v23

    .line 891
    invoke-direct/range {v24 .. v41}, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJJJIIII)V

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-interface {v8, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_50

    .line 900
    .end local v20    # "x":I
    .end local v21    # "y":I
    .end local v22    # "w":I
    .end local v23    # "h":I
    .end local v25    # "pkgName":Ljava/lang/String;
    .end local v26    # "title":Ljava/lang/String;
    .end local v42    # "added":Z
    .end local v44    # "appList":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    .end local v45    # "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    .end local v46    # "bndl":Landroid/os/Bundle;
    .end local v54    # "frameRect":Landroid/graphics/Rect;
    .end local v55    # "frameSize":[I
    .end local v56    # "i":I
    .end local v57    # "isFocused":Z
    .end local v58    # "layer":I
    .end local v61    # "shownFrameRect":Landroid/graphics/Rect;
    .end local v62    # "shownFrameSize":[F
    .end local v63    # "topPkgName":Ljava/lang/String;
    .end local v64    # "visible":Z
    .end local v67    # "winVisible":Z
    .end local v68    # "winnum":I
    :cond_827
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_860

    .line 901
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    .line 902
    .restart local v49    # "ctx":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    if-eqz v49, :cond_860

    .line 903
    const/4 v8, 0x0

    move-object/from16 v0, v49

    iput v8, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->x:I

    .line 904
    const/4 v8, 0x0

    move-object/from16 v0, v49

    iput v8, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->y:I

    .line 905
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v8}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelWidth()I

    move-result v8

    move-object/from16 v0, v49

    iput v8, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->w:I

    .line 906
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v8}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelHeight()I

    move-result v8

    move-object/from16 v0, v49

    iput v8, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->h:I
    :try_end_860
    .catchall {:try_start_4c4 .. :try_end_860} :catchall_4bf

    .end local v49    # "ctx":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    :cond_860
    monitor-exit v69

    .line 911
    if-eqz v63, :cond_870

    .line 912
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v44

    .line 913
    .restart local v44    # "appList":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-eqz v44, :cond_870

    .line 914
    move-object/from16 v0, v44

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->updateCurrentForegroundPackageName(Ljava/lang/String;)V

    .line 918
    .end local v44    # "appList":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    :cond_870
    const/16 v48, 0x0

    .line 919
    .local v48, "contextChanged":Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    monitor-enter v10

    .line 920
    :try_start_877
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface/range {v59 .. v59}, Ljava/util/List;->size()I

    move-result v11

    if-ne v8, v11, :cond_8e8

    .line 921
    const/16 v56, 0x0

    .restart local v56    # "i":I
    :goto_887
    invoke-interface/range {v59 .. v59}, Ljava/util/List;->size()I

    move-result v8

    move/from16 v0, v56

    if-ge v0, v8, :cond_8bb

    .line 922
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextInfoList:Ljava/util/List;

    move/from16 v0, v56

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    .line 923
    .local v52, "ctxNew":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    move-object/from16 v0, v59

    move/from16 v1, v56

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    .line 924
    .local v53, "ctxOld":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    move-object/from16 v0, v52

    iget v8, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->appID:I

    move-object/from16 v0, v53

    iget v11, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->appID:I

    if-ne v8, v11, :cond_8b9

    move-object/from16 v0, v52

    iget v8, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->x:I

    move-object/from16 v0, v53

    iget v11, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->x:I
    :try_end_8b7
    .catchall {:try_start_877 .. :try_end_8b7} :catchall_8eb

    if-eq v8, v11, :cond_8c7

    .line 926
    :cond_8b9
    const/16 v48, 0x1

    .end local v52    # "ctxNew":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    .end local v53    # "ctxOld":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    .end local v56    # "i":I
    :cond_8bb
    :goto_8bb
    monitor-exit v10

    .line 934
    if-eqz v48, :cond_8c6

    .line 935
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->setContextInfoUpdated(Z)V

    .line 681
    :cond_8c6
    return-void

    .line 925
    .restart local v52    # "ctxNew":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    .restart local v53    # "ctxOld":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    .restart local v56    # "i":I
    :cond_8c7
    :try_start_8c7
    move-object/from16 v0, v52

    iget v8, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->y:I

    move-object/from16 v0, v53

    iget v11, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->y:I

    if-ne v8, v11, :cond_8b9

    move-object/from16 v0, v52

    iget v8, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->w:I

    move-object/from16 v0, v53

    iget v11, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->w:I

    if-ne v8, v11, :cond_8b9

    move-object/from16 v0, v52

    iget v8, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->h:I

    move-object/from16 v0, v53

    iget v11, v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->h:I
    :try_end_8e3
    .catchall {:try_start_8c7 .. :try_end_8e3} :catchall_8eb

    if-ne v8, v11, :cond_8b9

    .line 921
    add-int/lit8 v56, v56, 0x1

    goto :goto_887

    .line 931
    .end local v52    # "ctxNew":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    .end local v53    # "ctxOld":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    .end local v56    # "i":I
    :cond_8e8
    const/16 v48, 0x1

    goto :goto_8bb

    .line 919
    :catchall_8eb
    move-exception v8

    monitor-exit v10

    throw v8
.end method

.method private updateRectList(ZIIII)Z
    .registers 29
    .param p1, "incremental"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v4}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getPreferredEncoding()I

    move-result v21

    .line 369
    .local v21, "preferredEncoding":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v4}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getPixelFormat()Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;

    move-result-object v5

    .line 370
    .local v5, "pixelFormat":Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;
    iget v4, v5, Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;->bitsPerPixel:I

    div-int/lit8 v18, v4, 0x8

    .line 371
    .local v18, "bytesPerPixel":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v4}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v6}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelHeight()I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v6, v1}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->checkRawFramebuffer(III)Z

    move-result v4

    if-nez v4, :cond_30

    .line 372
    const/4 v4, 0x1

    return v4

    .line 376
    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v4}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelWidth()I

    move-result v7

    .line 377
    .local v7, "width":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v4}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelHeight()I

    move-result v8

    .line 378
    .local v8, "height":I
    const/16 v22, 0x0

    .line 379
    .local v22, "success":Z
    invoke-static {}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->startCapture()V

    .line 380
    if-nez v21, :cond_1b3

    .line 381
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->framebuffer:Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mCurrentRemoteBuffer:[B

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v10}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getRotation()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->fbCapture(Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;[BIII)Z

    move-result v22

    .line 385
    .local v22, "success":Z
    :goto_5b
    invoke-static {}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->stopCapture()V

    .line 386
    if-nez v22, :cond_1c9

    .line 387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeLast:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeLast:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v6, v10}, Landroid/graphics/Point;->set(II)V

    .line 391
    :goto_73
    new-instance v4, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->session:Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    invoke-direct {v4, v6, v10}, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;-><init>(Lcom/lge/mirrorlink/vnc/lib/VNCServer;Lcom/lge/mirrorlink/vnc/lib/VNCSession;)V

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Lcom/lge/mirrorlink/vnc/lib/DisplayOrientationHandler;->execute(II)V

    .line 405
    invoke-static {}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->startEncode()V

    .line 413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeLast:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v10}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelWidth()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v11}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelHeight()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v12}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getRotation()I

    move-result v12

    invoke-static {v4, v6, v10, v11, v12}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->checkDesktopSizeChanged(Landroid/graphics/Point;Landroid/graphics/Point;III)Z

    move-result v20

    .line 414
    .local v20, "isNeededDesktopSize":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    const/16 v6, -0xdf

    invoke-virtual {v4, v6}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->supportEncoding(I)Z

    move-result v4

    if-eqz v4, :cond_1f2

    .line 415
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move/from16 v0, p4

    if-lt v4, v0, :cond_ce

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move/from16 v0, p5

    if-ge v4, v0, :cond_1dc

    .line 417
    :cond_ce
    :goto_ce
    const/16 v20, 0x1

    .line 419
    .end local v20    # "isNeededDesktopSize":Z
    :cond_d0
    if-eqz v20, :cond_153

    .line 420
    const-string/jumbo v4, "MirrorLink_VNC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DesktopSizeEncoding needed! force:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mForceDesktopSize:Z

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string/jumbo v4, "MirrorLink_VNC"

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeLast:Landroid/graphics/Point;

    const/4 v11, 0x0

    aput-object v10, v6, v11

    const-string/jumbo v10, " -> "

    const/4 v11, 0x1

    aput-object v10, v6, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    const/4 v11, 0x2

    aput-object v10, v6, v11

    const-string/jumbo v10, ", ("

    const/4 v11, 0x3

    aput-object v10, v6, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v10}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x4

    aput-object v10, v6, v11

    const-string/jumbo v10, "x"

    const/4 v11, 0x5

    aput-object v10, v6, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v10}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getServerPixelHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x6

    aput-object v10, v6, v11

    const-string/jumbo v10, ") "

    const/4 v11, 0x7

    aput-object v10, v6, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v10}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getRotation()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x8

    aput-object v10, v6, v11

    invoke-static {v4, v6}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mForceDesktopSize:Z

    .line 429
    :cond_153
    :goto_153
    if-eqz v20, :cond_1f6

    .line 432
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeLast:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v6, v10}, Landroid/graphics/Point;->set(II)V

    .line 434
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->rectList:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

    new-instance v6, Lcom/lge/mirrorlink/vnc/lib/DesktopSizeRect;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-direct {v6, v10, v11}, Lcom/lge/mirrorlink/vnc/lib/DesktopSizeRect;-><init>(II)V

    invoke-virtual {v4, v6}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;->add(Ljava/lang/Object;)Z

    .line 435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->setContextInfoUpdated(Z)V

    .line 504
    .end local p1    # "incremental":Z
    :goto_188
    if-eqz v22, :cond_19c

    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mCurrentRemoteBuffer:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer1:[B

    if-ne v4, v6, :cond_2b7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer2:[B

    :goto_198
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mCurrentRemoteBuffer:[B

    .line 507
    :cond_19c
    invoke-static {}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->stopEncode()V

    .line 509
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->rectList:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

    .line 510
    const/16 v6, -0xdf

    const/16 v10, -0x20c

    .line 509
    filled-new-array {v6, v10}, [I

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;->hasEncodingRect([I)Z

    move-result v4

    if-eqz v4, :cond_2bd

    .line 511
    const/4 v4, 0x1

    return v4

    .line 383
    .local v22, "success":Z
    .restart local p1    # "incremental":Z
    :cond_1b3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->framebuffer:Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mCurrentRemoteBuffer:[B

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v10}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getRotation()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->fbCaptureForRLE(Lcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;[BIII)Z

    move-result v22

    .local v22, "success":Z
    goto/16 :goto_5b

    .line 389
    :cond_1c9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    invoke-virtual {v4}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getRotation()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v8, v6}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->updateWH(IIILandroid/graphics/Point;)V

    goto/16 :goto_73

    .line 416
    .restart local v20    # "isNeededDesktopSize":Z
    :cond_1dc
    add-int v4, p2, p4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-gt v4, v6, :cond_ce

    add-int v4, p3, p5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-le v4, v6, :cond_d0

    goto/16 :goto_ce

    .line 425
    :cond_1f2
    const/16 v20, 0x0

    .local v20, "isNeededDesktopSize":Z
    goto/16 :goto_153

    .line 445
    .end local v20    # "isNeededDesktopSize":Z
    :cond_1f6
    if-nez p1, :cond_200

    .line 446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->setContextInfoUpdated(Z)V

    .line 451
    :cond_200
    invoke-static {}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->startContext()V

    .line 452
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->rectList:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->addContextInformationRect(Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;)V

    .line 453
    invoke-static {}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->stopContext()V

    .line 454
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->server:Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->setContextInfoUpdated(Z)V

    .line 455
    const/16 p1, 0x0

    .line 459
    .local p1, "incremental":Z
    const/4 v9, 0x0

    .line 460
    .local v9, "r":Lcom/lge/mirrorlink/vnc/lib/Rectangle;
    packed-switch v21, :pswitch_data_2cc

    .line 466
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRectRaw:Lcom/lge/mirrorlink/vnc/lib/RawRect;

    .line 472
    .local v9, "r":Lcom/lge/mirrorlink/vnc/lib/Rectangle;
    :goto_221
    if-eqz p1, :cond_29a

    .line 473
    invoke-static {}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->startDetectChanged()V

    .line 474
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->detectChangedArea(III)Landroid/graphics/Rect;

    move-result-object v19

    .line 475
    .local v19, "change":Landroid/graphics/Rect;
    invoke-static {}, Lcom/lge/mirrorlink/vnc/util/PerfWatcher;->stopDetectChanged()V

    .line 477
    if-eqz v19, :cond_23e

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_259

    .line 479
    :cond_23e
    invoke-static {}, Lcom/lge/mirrorlink/vnc/lib/RawRect;->getEmptyRect()Lcom/lge/mirrorlink/vnc/lib/RawRect;

    move-result-object v9

    .line 480
    const-string/jumbo v4, "MirrorLink_VNC"

    const-string/jumbo v6, "make Enpty Rect. "

    invoke-static {v4, v6}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .end local v19    # "change":Landroid/graphics/Rect;
    :goto_24b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->rectList:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

    invoke-virtual {v4, v9}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_188

    .line 462
    .local v9, "r":Lcom/lge/mirrorlink/vnc/lib/Rectangle;
    :pswitch_254
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRectRle:Lcom/lge/mirrorlink/vnc/lib/RleRect;

    .local v9, "r":Lcom/lge/mirrorlink/vnc/lib/Rectangle;
    goto :goto_221

    .line 482
    .restart local v19    # "change":Landroid/graphics/Rect;
    :cond_259
    const-string/jumbo v4, "MirrorLink_VNC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "changed area. "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mCurrentRemoteBuffer:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v11, v4, Landroid/graphics/Point;->x:I

    .line 485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v12, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v19

    iget v14, v0, Landroid/graphics/Rect;->left:I

    .line 486
    move-object/from16 v0, v19

    iget v15, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v16

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v17

    move-object v13, v5

    .line 484
    invoke-virtual/range {v9 .. v17}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->encode([BIILcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;IIII)V

    goto :goto_24b

    .line 490
    .end local v19    # "change":Landroid/graphics/Rect;
    :cond_29a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mCurrentRemoteBuffer:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v11, v4, Landroid/graphics/Point;->x:I

    .line 491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteSizeCurrent:Landroid/graphics/Point;

    iget v12, v4, Landroid/graphics/Point;->y:I

    move-object v13, v5

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    .line 490
    invoke-virtual/range {v9 .. v17}, Lcom/lge/mirrorlink/vnc/lib/Rectangle;->encode([BIILcom/lge/mirrorlink/vnc/lib/VNCPixelFormat;IIII)V

    goto :goto_24b

    .line 505
    .end local v9    # "r":Lcom/lge/mirrorlink/vnc/lib/Rectangle;
    .end local p1    # "incremental":Z
    :cond_2b7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer1:[B

    goto/16 :goto_198

    .line 514
    :cond_2bd
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->rectList:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

    invoke-virtual {v4}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;->hasEmptyRect()Z

    move-result v4

    if-eqz v4, :cond_2c9

    .line 515
    const/4 v4, 0x0

    return v4

    .line 517
    :cond_2c9
    const/4 v4, 0x1

    return v4

    .line 460
    nop

    :pswitch_data_2cc
    .packed-switch -0x20d
        :pswitch_254
    .end packed-switch
.end method

.method private updateWH(IIILandroid/graphics/Point;)V
    .registers 6
    .param p1, "rotation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "wh"    # Landroid/graphics/Point;

    .prologue
    .line 530
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    .line 531
    :cond_6
    iget-boolean v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mWidthHeightSwitched:Z

    if-eqz v0, :cond_e

    .line 532
    invoke-virtual {p4, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 528
    :goto_d
    return-void

    .line 534
    :cond_e
    invoke-virtual {p4, p3, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_d

    .line 537
    :cond_12
    iget-boolean v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mWidthHeightSwitched:Z

    if-eqz v0, :cond_1a

    .line 538
    invoke-virtual {p4, p3, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_d

    .line 540
    :cond_1a
    invoke-virtual {p4, p2, p3}, Landroid/graphics/Point;->set(II)V

    goto :goto_d
.end method


# virtual methods
.method protected checkRawFramebuffer(III)Z
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bytesPerPixel"    # I

    .prologue
    const/4 v5, 0x0

    .line 556
    mul-int v2, p1, p2

    mul-int v1, v2, p3

    .line 557
    .local v1, "sizeInBytes":I
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mCurrentRemoteBuffer:[B

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mCurrentRemoteBuffer:[B

    array-length v2, v2

    if-eq v2, v1, :cond_38

    .line 558
    :cond_e
    iput-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mCurrentRemoteBuffer:[B

    .line 559
    iput-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer1:[B

    .line 560
    iput-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer2:[B

    .line 562
    :try_start_14
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer1:[B
    :try_end_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_18} :catch_3a

    .line 567
    :goto_18
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer1:[B

    if-nez v2, :cond_20

    .line 569
    :try_start_1c
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer1:[B
    :try_end_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_20} :catch_56

    .line 575
    :cond_20
    :goto_20
    :try_start_20
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer2:[B
    :try_end_24
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_24} :catch_72

    .line 580
    :goto_24
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer2:[B

    if-nez v2, :cond_2c

    .line 582
    :try_start_28
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer2:[B
    :try_end_2c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_28 .. :try_end_2c} :catch_8e

    .line 587
    :cond_2c
    :goto_2c
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer1:[B

    if-eqz v2, :cond_aa

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer2:[B

    if-eqz v2, :cond_aa

    .line 588
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer1:[B

    iput-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mCurrentRemoteBuffer:[B

    .line 596
    :cond_38
    const/4 v2, 0x1

    return v2

    .line 563
    :catch_3a
    move-exception v0

    .line 565
    .local v0, "oome":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v2, "MirrorLink_VNC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OutOfMemoryError1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18

    .line 570
    .end local v0    # "oome":Ljava/lang/OutOfMemoryError;
    :catch_56
    move-exception v0

    .line 571
    .restart local v0    # "oome":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v2, "MirrorLink_VNC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OutOfMemoryError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    .line 576
    .end local v0    # "oome":Ljava/lang/OutOfMemoryError;
    :catch_72
    move-exception v0

    .line 578
    .restart local v0    # "oome":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v2, "MirrorLink_VNC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OutOfMemoryError2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24

    .line 583
    .end local v0    # "oome":Ljava/lang/OutOfMemoryError;
    :catch_8e
    move-exception v0

    .line 584
    .restart local v0    # "oome":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v2, "MirrorLink_VNC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OutOfMemoryError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2c

    .line 590
    .end local v0    # "oome":Ljava/lang/OutOfMemoryError;
    :cond_aa
    iput-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer1:[B

    .line 591
    iput-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer2:[B

    .line 592
    iput-object v5, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mCurrentRemoteBuffer:[B

    .line 593
    const/4 v2, 0x0

    return v2
.end method

.method public declared-synchronized quit()V
    .registers 4

    .prologue
    monitor-enter p0

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mFbUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 121
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 123
    iget-boolean v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->initFramebuffer:Z

    if-eqz v0, :cond_4d

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->initFramebuffer:Z

    .line 125
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mFbUpdateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_52

    .line 126
    :try_start_15
    const-string/jumbo v0, "MirrorLink_VNC"

    const-string/jumbo v2, "cleanup framebuffer class."

    invoke-static {v0, v2}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->framebuffer:Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/AndroidFramebuffer;->fbClean()V

    .line 129
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer1:[B

    if-eqz v0, :cond_2a

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer1:[B

    .line 133
    :cond_2a
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer2:[B

    if-eqz v0, :cond_31

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRemoteBuffer2:[B

    .line 137
    :cond_31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mCurrentRemoteBuffer:[B

    .line 138
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->rectList:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;->clear()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->rectList:Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$RectList;

    .line 141
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRectRle:Lcom/lge/mirrorlink/vnc/lib/RleRect;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/RleRect;->close()V

    .line 142
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRectRaw:Lcom/lge/mirrorlink/vnc/lib/RawRect;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/RawRect;->close()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRectRaw:Lcom/lge/mirrorlink/vnc/lib/RawRect;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mRectRle:Lcom/lge/mirrorlink/vnc/lib/RleRect;
    :try_end_4c
    .catchall {:try_start_15 .. :try_end_4c} :catchall_4f

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_52

    :cond_4d
    monitor-exit p0

    .line 118
    return-void

    .line 125
    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v1

    throw v0
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setForceDesktopSize(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mForceDesktopSize:Z

    .line 251
    return-void
.end method

.method public update(ZIIIIZ)V
    .registers 14
    .param p1, "incremental"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "delay"    # Z

    .prologue
    .line 230
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mFbUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_12

    .line 231
    const-string/jumbo v1, "MirrorLink_VNC"

    const-string/jumbo v2, "FramebufferUpdateThread: cannot post framebuffer update request."

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void

    .line 235
    :cond_12
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;-><init>(Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;ZIIII)V

    .line 237
    .local v0, "newRequest":Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread$FramebufferUpdateRequest;
    if-eqz p6, :cond_48

    .line 238
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 240
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mFbUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mFbUpdateHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mFbUpdateHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 228
    :goto_47
    return-void

    .line 243
    :cond_48
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mContextHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 245
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mFbUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mFbUpdateHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/FramebufferUpdateThread;->mFbUpdateHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_47
.end method
