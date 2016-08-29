.class public final Lcom/mirrorlink/android/commonapi/Defs$BlockingInformation;
.super Ljava/lang/Object;
.source "Defs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/Defs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlockingInformation"
.end annotation


# static fields
.field public static final AUDIOBLOCKED_APPLICATION_CATEGORY_NOT_ALLOWED:I = 0x1

.field public static final AUDIOBLOCKED_APPLICATION_NOT_TRUSTED:I = 0x2

.field public static final AUDIOBLOCKED_APPLICATION_UNIQUE_ID_NOT_ALLOWED:I = 0x4

.field public static final AUDIOBLOCKED_GLOBALLY_MUTED:I = 0x8

.field public static final AUDIOBLOCKED_STREAM_MUTED:I = 0x10

.field public static final DISPLAYBLOCKED_APPLICATION_CATEGORY_NOT_ALLOWED:I = 0x2

.field public static final DISPLAYBLOCKED_APPLICATION_NOT_TRUSTED:I = 0x8

.field public static final DISPLAYBLOCKED_APPLICATION_UNIQUE_ID_NOT_ALLOWED:I = 0x20

.field public static final DISPLAYBLOCKED_CONTENT_CATEGORY_NOT_ALLOWED:I = 0x1

.field public static final DISPLAYBLOCKED_CONTENT_NOT_TRUSTED:I = 0x4

.field public static final DISPLAYBLOCKED_CONTENT_RULES_NOT_FOLLOWED:I = 0x10

.field public static final DISPLAYBLOCKED_UI_NOT_IN_FOCUS:I = 0x100

.field public static final DISPLAYBLOCKED_UI_NOT_VISIBLE:I = 0x200


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
