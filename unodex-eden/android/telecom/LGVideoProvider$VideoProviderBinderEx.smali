.class Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;
.super Lcom/android/internal/telecom/IVideoProviderEx$Stub;
.source "LGVideoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/LGVideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoProviderBinderEx"
.end annotation


# instance fields
.field private final mProvider:Landroid/telecom/Connection$VideoProvider;


# direct methods
.method public constructor <init>(Landroid/telecom/Connection$VideoProvider;)V
    .registers 2
    .param p1, "provider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;-><init>()V

    .line 283
    iput-object p1, p0, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;->mProvider:Landroid/telecom/Connection$VideoProvider;

    .line 284
    return-void
.end method


# virtual methods
.method public addVideoCallbackEx(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "videoCallbackBinder"    # Landroid/os/IBinder;

    .prologue
    .line 287
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 288
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 289
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 291
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;->mProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1, v0}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$interMethodDispatch1$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$postMessageForVideoProviderEx(Landroid/telecom/Connection$VideoProvider;Landroid/os/Message;)V

    .line 292
    return-void
.end method

.method public captureVideo(Ljava/lang/String;I)V
    .registers 5
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "display"    # I

    .prologue
    .line 310
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 311
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    .line 312
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 313
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 315
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;->mProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1, v0}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$interMethodDispatch1$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$postMessageForVideoProviderEx(Landroid/telecom/Connection$VideoProvider;Landroid/os/Message;)V

    .line 316
    return-void
.end method

.method public clearAlternativeImage()V
    .registers 3

    .prologue
    .line 349
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 350
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 352
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;->mProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1, v0}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$interMethodDispatch1$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$postMessageForVideoProviderEx(Landroid/telecom/Connection$VideoProvider;Landroid/os/Message;)V

    .line 353
    return-void
.end method

.method public removeVideoCallbackEx(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "videoCallbackBinder"    # Landroid/os/IBinder;

    .prologue
    .line 295
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 296
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x73

    iput v1, v0, Landroid/os/Message;->what:I

    .line 297
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 299
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;->mProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1, v0}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$interMethodDispatch1$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$postMessageForVideoProviderEx(Landroid/telecom/Connection$VideoProvider;Landroid/os/Message;)V

    .line 300
    return-void
.end method

.method public setAlternativeImage(Ljava/lang/String;)V
    .registers 4
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 342
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x6a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 343
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 345
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;->mProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1, v0}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$interMethodDispatch1$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$postMessageForVideoProviderEx(Landroid/telecom/Connection$VideoProvider;Landroid/os/Message;)V

    .line 346
    return-void
.end method

.method public setCameraBrightness(I)V
    .registers 4
    .param p1, "brightness"    # I

    .prologue
    .line 356
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 357
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x6c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 358
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 360
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;->mProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1, v0}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$interMethodDispatch1$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$postMessageForVideoProviderEx(Landroid/telecom/Connection$VideoProvider;Landroid/os/Message;)V

    .line 361
    return-void
.end method

.method public setCameraOnOff(I)V
    .registers 4
    .param p1, "onOff"    # I

    .prologue
    .line 364
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 365
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x71

    iput v1, v0, Landroid/os/Message;->what:I

    .line 366
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 368
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;->mProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1, v0}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$interMethodDispatch1$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$postMessageForVideoProviderEx(Landroid/telecom/Connection$VideoProvider;Landroid/os/Message;)V

    .line 369
    return-void
.end method

.method public setDisplayOrientation(II)V
    .registers 5
    .param p1, "display"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 396
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 397
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x70

    iput v1, v0, Landroid/os/Message;->what:I

    .line 398
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 399
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 401
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;->mProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1, v0}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$interMethodDispatch1$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$postMessageForVideoProviderEx(Landroid/telecom/Connection$VideoProvider;Landroid/os/Message;)V

    .line 402
    return-void
.end method

.method public setDisplaySize(II)V
    .registers 5
    .param p1, "display"    # I
    .param p2, "size"    # I

    .prologue
    .line 387
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 388
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 389
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 390
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 392
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;->mProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1, v0}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$interMethodDispatch1$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$postMessageForVideoProviderEx(Landroid/telecom/Connection$VideoProvider;Landroid/os/Message;)V

    .line 393
    return-void
.end method

.method public setMultitaskingState(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 319
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 320
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x72

    iput v1, v0, Landroid/os/Message;->what:I

    .line 321
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 323
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;->mProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1, v0}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$interMethodDispatch1$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$postMessageForVideoProviderEx(Landroid/telecom/Connection$VideoProvider;Landroid/os/Message;)V

    .line 324
    return-void
.end method

.method public startBackground()V
    .registers 3

    .prologue
    .line 327
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 328
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 330
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;->mProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1, v0}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$interMethodDispatch1$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$postMessageForVideoProviderEx(Landroid/telecom/Connection$VideoProvider;Landroid/os/Message;)V

    .line 331
    return-void
.end method

.method public stopAudio()V
    .registers 3

    .prologue
    .line 303
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 304
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 306
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;->mProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1, v0}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$interMethodDispatch1$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$postMessageForVideoProviderEx(Landroid/telecom/Connection$VideoProvider;Landroid/os/Message;)V

    .line 307
    return-void
.end method

.method public stopBackground()V
    .registers 3

    .prologue
    .line 334
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 335
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    .line 337
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;->mProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1, v0}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$interMethodDispatch1$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$postMessageForVideoProviderEx(Landroid/telecom/Connection$VideoProvider;Landroid/os/Message;)V

    .line 338
    return-void
.end method

.method public swapDisplay()V
    .registers 3

    .prologue
    .line 372
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 373
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x6d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 375
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;->mProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1, v0}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$interMethodDispatch1$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$postMessageForVideoProviderEx(Landroid/telecom/Connection$VideoProvider;Landroid/os/Message;)V

    .line 376
    return-void
.end method

.method public updateDisplay(I)V
    .registers 4
    .param p1, "display"    # I

    .prologue
    .line 379
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 380
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 381
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 383
    iget-object v1, p0, Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;->mProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1, v0}, Landroid/telecom/LGVideoProvider$MethodOverride;->ajc$interMethodDispatch1$android_telecom_LGVideoProvider$MethodOverride$android_telecom_Connection$VideoProvider$postMessageForVideoProviderEx(Landroid/telecom/Connection$VideoProvider;Landroid/os/Message;)V

    .line 384
    return-void
.end method
