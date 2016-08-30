.class public Lcom/lge/preference/VolumePreferenceEx$PrivateAccess$AjcClosure1;
.super Lorg/aspectj/runtime/internal/AroundClosure;
.source "VolumePreferenceEx.java"


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lorg/aspectj/runtime/internal/AroundClosure;-><init>([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/internal/AroundClosure;->state:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->postStartSample_aroundBody0(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V

    const/4 v0, 0x0

    return-object v0
.end method
