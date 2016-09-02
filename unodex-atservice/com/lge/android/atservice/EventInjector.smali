.class public Lcom/lge/android/atservice/EventInjector;
.super Landroid/app/Instrumentation;
.source "EventInjector.java"


# static fields
.field public static final ACTION_MOVEBY:I = 0x14

.field private static final DIFFTIME:I = 0x7d0

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field ix:F

.field iy:F

.field private lMotionEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDownTime:J

.field private mLastKeyDownTime:J

.field private mLastPoint:Landroid/view/MotionEvent;

.field private mMotionEvent:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 30
    iput v1, p0, Lcom/lge/android/atservice/EventInjector;->ix:F

    .line 31
    iput v1, p0, Lcom/lge/android/atservice/EventInjector;->iy:F

    .line 34
    iput-object p1, p0, Lcom/lge/android/atservice/EventInjector;->mContext:Landroid/content/Context;

    .line 36
    iget-object v1, p0, Lcom/lge/android/atservice/EventInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 39
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "ATCMDService EventInjector WakeLock"

    .line 37
    const v2, 0x3000001a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/lge/android/atservice/EventInjector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/android/atservice/EventInjector;->lMotionEvent:Ljava/util/List;

    .line 33
    return-void
.end method

.method private isScreenOn()Z
    .registers 4

    .prologue
    .line 44
    iget-object v1, p0, Lcom/lge/android/atservice/EventInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 45
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    return v1
.end method

.method private wakeup()V
    .registers 5

    .prologue
    .line 49
    iget-object v1, p0, Lcom/lge/android/atservice/EventInjector;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/lge/android/atservice/LGATCMDService;

    invoke-virtual {v1}, Lcom/lge/android/atservice/LGATCMDService;->getDeviceManager()Lcom/lge/android/atservice/DeviceManager;

    move-result-object v0

    .line 50
    .local v0, "dm":Lcom/lge/android/atservice/DeviceManager;
    invoke-virtual {v0}, Lcom/lge/android/atservice/DeviceManager;->disableKeygaurd()V

    .line 51
    sget-object v1, Lcom/lge/android/atservice/EventInjector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 48
    return-void
.end method

.method private wakeupAndCanSendKey(I)Z
    .registers 4
    .param p1, "keycode"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lge/android/atservice/EventInjector;->isScreenOn()Z

    move-result v0

    .line 57
    .local v0, "screenOn":Z
    if-nez v0, :cond_f

    .line 58
    const-string/jumbo v1, "Currently Screen off, wake up device!"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/lge/android/atservice/EventInjector;->wakeup()V

    .line 62
    :cond_f
    if-nez v0, :cond_17

    if-nez v0, :cond_19

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_19

    .line 63
    :cond_17
    const/4 v1, 0x1

    return v1

    .line 66
    :cond_19
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public generateKey(II)V
    .registers 28
    .param p1, "action"    # I
    .param p2, "keycode"    # I

    .prologue
    .line 88
    const/16 v24, 0x0

    .line 90
    .local v24, "longkey":Z
    const/16 v23, 0x0

    .line 93
    .local v23, "longEvent":Landroid/view/KeyEvent;
    if-nez p1, :cond_11

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lge/android/atservice/EventInjector;->mLastKeyDownTime:J

    move-object/from16 v11, v23

    .line 86
    .end local v23    # "longEvent":Landroid/view/KeyEvent;
    .local v11, "longEvent":Landroid/view/KeyEvent;
    :goto_10
    return-void

    .line 95
    .end local v11    # "longEvent":Landroid/view/KeyEvent;
    .restart local v23    # "longEvent":Landroid/view/KeyEvent;
    :cond_11
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_d8

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 98
    .local v6, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lge/android/atservice/EventInjector;->mLastKeyDownTime:J

    const/4 v8, 0x1

    const/4 v10, 0x0

    move/from16 v9, p2

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 99
    .local v3, "upEvent":Landroid/view/KeyEvent;
    new-instance v9, Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/lge/android/atservice/EventInjector;->mLastKeyDownTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/lge/android/atservice/EventInjector;->mLastKeyDownTime:J

    const/4 v14, 0x0

    const/16 v16, 0x0

    move/from16 v15, p2

    invoke-direct/range {v9 .. v16}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 101
    .local v9, "downEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lge/android/atservice/EventInjector;->mLastKeyDownTime:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-eqz v4, :cond_d8

    .line 102
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lge/android/atservice/EventInjector;->mLastKeyDownTime:J

    sub-long v4, v6, v4

    const-wide/16 v12, 0x7d0

    cmp-long v4, v4, v12

    if-lez v4, :cond_d5

    .line 103
    const-string/jumbo v4, "Send Long key event"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 104
    const/16 v24, 0x1

    .line 105
    invoke-virtual {v9}, Landroid/view/KeyEvent;->getFlags()I

    move-result v22

    .line 106
    .local v22, "mflag":I
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    .line 107
    new-instance v11, Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/lge/android/atservice/EventInjector;->mLastKeyDownTime:J

    const/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide v14, v6

    move/from16 v17, p2

    invoke-direct/range {v11 .. v22}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 110
    .end local v22    # "mflag":I
    .end local v23    # "longEvent":Landroid/view/KeyEvent;
    .restart local v11    # "longEvent":Landroid/view/KeyEvent;
    :goto_77
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/lge/android/atservice/EventInjector;->wakeupAndCanSendKey(I)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Send keycode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/lge/android/atservice/EventInjector;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 114
    if-eqz v24, :cond_ba

    .line 115
    const-string/jumbo v4, "SendkeySync Long key event"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v9}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_c7

    .line 118
    const-string/jumbo v4, "not home, power key..."

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/lge/android/atservice/EventInjector;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 130
    :cond_ba
    :goto_ba
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lge/android/atservice/EventInjector;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 132
    :cond_bf
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lge/android/atservice/EventInjector;->mLastKeyDownTime:J

    goto/16 :goto_10

    .line 121
    :cond_c7
    const-string/jumbo v4, "Give 2000 delay time"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 124
    const-wide/16 v4, 0x7d0

    :try_start_cf
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d2
    .catch Ljava/lang/InterruptedException; {:try_start_cf .. :try_end_d2} :catch_d3

    goto :goto_ba

    .line 125
    :catch_d3
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_ba

    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v11    # "longEvent":Landroid/view/KeyEvent;
    .restart local v23    # "longEvent":Landroid/view/KeyEvent;
    :cond_d5
    move-object/from16 v11, v23

    .restart local v11    # "longEvent":Landroid/view/KeyEvent;
    goto :goto_77

    .end local v3    # "upEvent":Landroid/view/KeyEvent;
    .end local v6    # "eventTime":J
    .end local v9    # "downEvent":Landroid/view/KeyEvent;
    .end local v11    # "longEvent":Landroid/view/KeyEvent;
    :cond_d8
    move-object/from16 v11, v23

    .restart local v11    # "longEvent":Landroid/view/KeyEvent;
    goto/16 :goto_10
.end method

.method public generateKeyDown(I)V
    .registers 4
    .param p1, "keycode"    # I

    .prologue
    .line 77
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 78
    .local v0, "mKeyEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/EventInjector;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 76
    return-void
.end method

.method public generateKeyDownUp(I)V
    .registers 4
    .param p1, "keycode"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/lge/android/atservice/EventInjector;->wakeupAndCanSendKey(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendKeyDownUpSync : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/lge/android/atservice/EventInjector;->sendKeyDownUpSync(I)V

    .line 69
    :cond_20
    return-void
.end method

.method public generateKeySequence(Ljava/lang/String;)V
    .registers 3
    .param p1, "sequence"    # Ljava/lang/String;

    .prologue
    .line 138
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lcom/lge/android/atservice/EventInjector;->wakeupAndCanSendKey(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 139
    invoke-virtual {p0, p1}, Lcom/lge/android/atservice/EventInjector;->sendStringSync(Ljava/lang/String;)V

    .line 137
    :cond_b
    return-void
.end method

.method public generateKeyUp(I)V
    .registers 4
    .param p1, "keycode"    # I

    .prologue
    .line 82
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 83
    .local v0, "mKeyEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/EventInjector;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 81
    return-void
.end method

.method public generateTouch(IFF)V
    .registers 15
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 146
    const/4 v9, 0x0

    .line 147
    .local v9, "xStep":F
    const/4 v10, 0x0

    .line 149
    .local v10, "yStep":F
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "generateTouch action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " x : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "y : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 151
    if-nez p1, :cond_60

    iget-wide v0, p0, Lcom/lge/android/atservice/EventInjector;->mDownTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_60

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/android/atservice/EventInjector;->mDownTime:J

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 154
    .local v2, "eventTime":J
    iget-wide v0, p0, Lcom/lge/android/atservice/EventInjector;->mDownTime:J

    const/4 v7, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/EventInjector;->mMotionEvent:Landroid/view/MotionEvent;

    .line 155
    iget-object v0, p0, Lcom/lge/android/atservice/EventInjector;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/EventInjector;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 156
    iput p2, p0, Lcom/lge/android/atservice/EventInjector;->ix:F

    .line 157
    iput p3, p0, Lcom/lge/android/atservice/EventInjector;->iy:F

    .line 182
    .end local v2    # "eventTime":J
    :cond_58
    :goto_58
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5f

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/android/atservice/EventInjector;->mDownTime:J

    .line 143
    :cond_5f
    return-void

    .line 158
    :cond_60
    const/16 v0, 0x14

    if-eq p1, v0, :cond_67

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d3

    .line 159
    :cond_67
    const/16 v0, 0x14

    if-ne p1, v0, :cond_c2

    .line 160
    const/high16 v0, 0x41200000    # 10.0f

    div-float v9, p2, v0

    .line 161
    const/high16 v0, 0x41200000    # 10.0f

    div-float v10, p3, v0

    .line 167
    :goto_73
    const/4 v8, 0x0

    .line 145
    .local v8, "i":I
    :goto_74
    const/16 v0, 0xa

    .line 167
    if-ge v8, v0, :cond_58

    .line 168
    iget v0, p0, Lcom/lge/android/atservice/EventInjector;->ix:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/lge/android/atservice/EventInjector;->ix:F

    .line 169
    iget v0, p0, Lcom/lge/android/atservice/EventInjector;->iy:F

    add-float/2addr v0, v10

    iput v0, p0, Lcom/lge/android/atservice/EventInjector;->iy:F

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ACTION_MOVEBY  x : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/android/atservice/EventInjector;->ix:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "y : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/android/atservice/EventInjector;->iy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 172
    .restart local v2    # "eventTime":J
    iget-wide v0, p0, Lcom/lge/android/atservice/EventInjector;->mDownTime:J

    iget v5, p0, Lcom/lge/android/atservice/EventInjector;->ix:F

    iget v6, p0, Lcom/lge/android/atservice/EventInjector;->iy:F

    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/EventInjector;->mMotionEvent:Landroid/view/MotionEvent;

    .line 173
    iget-object v0, p0, Lcom/lge/android/atservice/EventInjector;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/EventInjector;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 167
    add-int/lit8 v8, v8, 0x1

    goto :goto_74

    .line 163
    .end local v2    # "eventTime":J
    .end local v8    # "i":I
    :cond_c2
    iget v0, p0, Lcom/lge/android/atservice/EventInjector;->ix:F

    sub-float v0, p2, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float v9, v0, v1

    .line 164
    iget v0, p0, Lcom/lge/android/atservice/EventInjector;->iy:F

    sub-float v0, p3, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float v10, v0, v1

    goto :goto_73

    .line 175
    :cond_d3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_58

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 177
    .restart local v2    # "eventTime":J
    iget-wide v0, p0, Lcom/lge/android/atservice/EventInjector;->mDownTime:J

    const/4 v7, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/EventInjector;->mMotionEvent:Landroid/view/MotionEvent;

    .line 179
    iget-object v0, p0, Lcom/lge/android/atservice/EventInjector;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/EventInjector;->sendPointerSync(Landroid/view/MotionEvent;)V

    goto/16 :goto_58
.end method
