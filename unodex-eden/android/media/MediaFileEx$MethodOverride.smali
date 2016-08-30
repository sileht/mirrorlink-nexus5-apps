.class public Landroid/media/MediaFileEx$MethodOverride;
.super Ljava/lang/Object;
.source "MediaFileEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFileEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodOverride"
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Landroid/media/MediaFileEx$MethodOverride;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 153
    :try_start_0
    invoke-static {}, Landroid/media/MediaFileEx$MethodOverride;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Landroid/media/MediaFileEx$MethodOverride;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$android_media_MediaFileEx$MethodOverride$1$c87ef5bcproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$android_media_MediaFileEx$MethodOverride$2$ea5ae9a1proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$android_media_MediaFileEx$MethodOverride$3$d98f7681proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$android_media_MediaFileEx$MethodOverride$4$e35a26a6proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$android_media_MediaFileEx$MethodOverride$5$7a75ea05proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 2
    .param p0, "this"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_media_MediaFileEx$MethodOverride$android_media_MediaFileEx$FIRST_AUDIO_FILE_TYPE_EX()I
    .registers 1

    .prologue
    .line 1
    sget v0, Landroid/media/MediaFileEx;->FIRST_AUDIO_FILE_TYPE_EX:I

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_media_MediaFileEx$MethodOverride$android_media_MediaFileEx$FIRST_DRM_FILE_TYPE_EX()I
    .registers 1

    .prologue
    .line 1
    sget v0, Landroid/media/MediaFileEx;->FIRST_DRM_FILE_TYPE_EX:I

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_media_MediaFileEx$MethodOverride$android_media_MediaFileEx$FIRST_IMAGE_FILE_TYPE_EX()I
    .registers 1

    .prologue
    .line 1
    sget v0, Landroid/media/MediaFileEx;->FIRST_IMAGE_FILE_TYPE_EX:I

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_media_MediaFileEx$MethodOverride$android_media_MediaFileEx$FIRST_VIDEO_FILE_TYPE_EX()I
    .registers 1

    .prologue
    .line 1
    sget v0, Landroid/media/MediaFileEx;->FIRST_VIDEO_FILE_TYPE_EX:I

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_media_MediaFileEx$MethodOverride$android_media_MediaFileEx$LAST_AUDIO_FILE_TYPE_EX()I
    .registers 1

    .prologue
    .line 1
    sget v0, Landroid/media/MediaFileEx;->LAST_AUDIO_FILE_TYPE_EX:I

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_media_MediaFileEx$MethodOverride$android_media_MediaFileEx$LAST_DRM_FILE_TYPE_EX()I
    .registers 1

    .prologue
    .line 1
    sget v0, Landroid/media/MediaFileEx;->LAST_DRM_FILE_TYPE_EX:I

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_media_MediaFileEx$MethodOverride$android_media_MediaFileEx$LAST_IMAGE_FILE_TYPE_EX()I
    .registers 1

    .prologue
    .line 1
    sget v0, Landroid/media/MediaFileEx;->LAST_IMAGE_FILE_TYPE_EX:I

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_media_MediaFileEx$MethodOverride$android_media_MediaFileEx$LAST_VIDEO_FILE_TYPE_EX()I
    .registers 1

    .prologue
    .line 1
    sget v0, Landroid/media/MediaFileEx;->LAST_VIDEO_FILE_TYPE_EX:I

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_media_MediaFileEx$MethodOverride$android_media_MediaFileEx$FIRST_AUDIO_FILE_TYPE_EX(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Landroid/media/MediaFileEx;->FIRST_AUDIO_FILE_TYPE_EX:I

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_media_MediaFileEx$MethodOverride$android_media_MediaFileEx$FIRST_DRM_FILE_TYPE_EX(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Landroid/media/MediaFileEx;->FIRST_DRM_FILE_TYPE_EX:I

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_media_MediaFileEx$MethodOverride$android_media_MediaFileEx$FIRST_IMAGE_FILE_TYPE_EX(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Landroid/media/MediaFileEx;->FIRST_IMAGE_FILE_TYPE_EX:I

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_media_MediaFileEx$MethodOverride$android_media_MediaFileEx$FIRST_VIDEO_FILE_TYPE_EX(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Landroid/media/MediaFileEx;->FIRST_VIDEO_FILE_TYPE_EX:I

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_media_MediaFileEx$MethodOverride$android_media_MediaFileEx$LAST_AUDIO_FILE_TYPE_EX(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Landroid/media/MediaFileEx;->LAST_AUDIO_FILE_TYPE_EX:I

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_media_MediaFileEx$MethodOverride$android_media_MediaFileEx$LAST_DRM_FILE_TYPE_EX(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Landroid/media/MediaFileEx;->LAST_DRM_FILE_TYPE_EX:I

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_media_MediaFileEx$MethodOverride$android_media_MediaFileEx$LAST_IMAGE_FILE_TYPE_EX(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Landroid/media/MediaFileEx;->LAST_IMAGE_FILE_TYPE_EX:I

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_media_MediaFileEx$MethodOverride$android_media_MediaFileEx$LAST_VIDEO_FILE_TYPE_EX(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Landroid/media/MediaFileEx;->LAST_VIDEO_FILE_TYPE_EX:I

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Landroid/media/MediaFileEx$MethodOverride;

    invoke-direct {v0}, Landroid/media/MediaFileEx$MethodOverride;-><init>()V

    sput-object v0, Landroid/media/MediaFileEx$MethodOverride;->ajc$perSingletonInstance:Landroid/media/MediaFileEx$MethodOverride;

    return-void
.end method

.method public static aspectOf()Landroid/media/MediaFileEx$MethodOverride;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Landroid/media/MediaFileEx$MethodOverride;->ajc$perSingletonInstance:Landroid/media/MediaFileEx$MethodOverride;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "android_media_MediaFileEx$MethodOverride"

    sget-object v2, Landroid/media/MediaFileEx$MethodOverride;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Landroid/media/MediaFileEx$MethodOverride;->ajc$perSingletonInstance:Landroid/media/MediaFileEx$MethodOverride;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/media/MediaFileEx$MethodOverride;->ajc$perSingletonInstance:Landroid/media/MediaFileEx$MethodOverride;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$android_media_MediaFileEx$MethodOverride$6$5110c757()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "staticinitialization(MediaFile.<clinit>())"
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Landroid/media/MediaFileEx;->addLGFileType()V

    .line 189
    return-void
.end method

.method public ajc$around$android_media_MediaFileEx$MethodOverride$1$c87ef5bc(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 9
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p2, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public boolean MediaFile.isAudioFileType(int))"
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 156
    .local v0, "argsObj":[Ljava/lang/Object;
    aget-object v3, v0, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 157
    .local v1, "fileType":I
    const/16 v3, 0x3e9

    if-lt v1, v3, :cond_21

    const/16 v3, 0x3f1

    if-gt v1, v3, :cond_21

    move v2, v5

    .line 158
    .local v2, "isLGType":Z
    :goto_17
    if-nez v2, :cond_23

    invoke-static {p1}, Landroid/media/MediaFileEx$MethodOverride;->ajc$around$android_media_MediaFileEx$MethodOverride$1$c87ef5bcproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v3

    if-nez v3, :cond_23

    move v3, v4

    :goto_20
    return v3

    .end local v2    # "isLGType":Z
    :cond_21
    move v2, v4

    .line 157
    goto :goto_17

    .restart local v2    # "isLGType":Z
    :cond_23
    move v3, v5

    .line 158
    goto :goto_20
.end method

.method public ajc$around$android_media_MediaFileEx$MethodOverride$2$ea5ae9a1(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 9
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p2, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public boolean MediaFile.isVideoFileType(int))"
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 162
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 163
    .local v0, "argsObj":[Ljava/lang/Object;
    aget-object v3, v0, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 164
    .local v1, "fileType":I
    const/16 v3, 0x44d

    if-lt v1, v3, :cond_21

    const/16 v3, 0x458

    if-gt v1, v3, :cond_21

    move v2, v5

    .line 165
    .local v2, "isLGType":Z
    :goto_17
    if-nez v2, :cond_23

    invoke-static {p1}, Landroid/media/MediaFileEx$MethodOverride;->ajc$around$android_media_MediaFileEx$MethodOverride$2$ea5ae9a1proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v3

    if-nez v3, :cond_23

    move v3, v4

    :goto_20
    return v3

    .end local v2    # "isLGType":Z
    :cond_21
    move v2, v4

    .line 164
    goto :goto_17

    .restart local v2    # "isLGType":Z
    :cond_23
    move v3, v5

    .line 165
    goto :goto_20
.end method

.method public ajc$around$android_media_MediaFileEx$MethodOverride$3$d98f7681(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 9
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p2, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public boolean MediaFile.isImageFileType(int))"
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 169
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 170
    .local v0, "argsObj":[Ljava/lang/Object;
    aget-object v3, v0, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 171
    .local v1, "fileType":I
    const/16 v3, 0x4b1

    if-lt v1, v3, :cond_21

    const/16 v3, 0x4b4

    if-gt v1, v3, :cond_21

    move v2, v5

    .line 172
    .local v2, "isLGType":Z
    :goto_17
    if-nez v2, :cond_23

    invoke-static {p1}, Landroid/media/MediaFileEx$MethodOverride;->ajc$around$android_media_MediaFileEx$MethodOverride$3$d98f7681proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v3

    if-nez v3, :cond_23

    move v3, v4

    :goto_20
    return v3

    .end local v2    # "isLGType":Z
    :cond_21
    move v2, v4

    .line 171
    goto :goto_17

    .restart local v2    # "isLGType":Z
    :cond_23
    move v3, v5

    .line 172
    goto :goto_20
.end method

.method public ajc$around$android_media_MediaFileEx$MethodOverride$4$e35a26a6(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 3
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public boolean MediaFile.isPlayListFileType(int))"
    .end annotation

    .prologue
    .line 176
    .line 177
    invoke-static {p1}, Landroid/media/MediaFileEx$MethodOverride;->ajc$around$android_media_MediaFileEx$MethodOverride$4$e35a26a6proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public ajc$around$android_media_MediaFileEx$MethodOverride$5$7a75ea05(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 9
    .param p1, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p2, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public boolean MediaFile.isDrmFileType(int))"
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 181
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 182
    .local v0, "argsObj":[Ljava/lang/Object;
    aget-object v3, v0, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 183
    .local v1, "fileType":I
    const/16 v3, 0x515

    if-lt v1, v3, :cond_21

    const/16 v3, 0x51a

    if-gt v1, v3, :cond_21

    move v2, v5

    .line 184
    .local v2, "isLGType":Z
    :goto_17
    if-nez v2, :cond_23

    invoke-static {p1}, Landroid/media/MediaFileEx$MethodOverride;->ajc$around$android_media_MediaFileEx$MethodOverride$5$7a75ea05proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v3

    if-nez v3, :cond_23

    move v3, v4

    :goto_20
    return v3

    .end local v2    # "isLGType":Z
    :cond_21
    move v2, v4

    .line 183
    goto :goto_17

    .restart local v2    # "isLGType":Z
    :cond_23
    move v3, v5

    .line 184
    goto :goto_20
.end method
