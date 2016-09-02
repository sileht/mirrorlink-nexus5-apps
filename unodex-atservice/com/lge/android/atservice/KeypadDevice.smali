.class public Lcom/lge/android/atservice/KeypadDevice;
.super Lcom/lge/android/atservice/Device;
.source "KeypadDevice.java"


# static fields
.field public static final KEY_POWER_FAIL:B = 0x32t

.field public static final KEY_POWER_OFF:B = 0x30t

.field public static final KEY_POWER_ON:B = 0x31t


# instance fields
.field private BackState:I

.field private CameraState:I

.field private CheckKey:I

.field private Count:I

.field private CurKeyValue:C

.field private DpadDownState:I

.field private DpadLeftState:I

.field private DpadRightState:I

.field private DpadUpState:I

.field private EightState:I

.field private FiveState:I

.field private FourState:I

.field private HashState:I

.field private HeadSetState:I

.field private HomeState:I

.field private KeyMap:[I

.field private KeyValue:[C

.field private MenuState:I

.field private NineState:I

.field private OneState:I

.field private PowerState:I

.field private PreBackState:I

.field private PreCameraState:I

.field private PreDpadDownState:I

.field private PreDpadLeftState:I

.field private PreDpadRightState:I

.field private PreDpadUpState:I

.field private PreEightState:I

.field private PreFiveState:I

.field private PreFourState:I

.field private PreHashState:I

.field private PreHeadSetState:I

.field private PreHomeState:I

.field private PreMenuState:I

.field private PreNineState:I

.field private PreOneState:I

.field private PrePowerState:I

.field private PreRecentState:I

.field private PreSearchState:I

.field private PreSevenState:I

.field private PreSixState:I

.field private PreStarState:I

.field private PreThreeState:I

.field private PreTwoState:I

.field private PreVolDownState:I

.field private PreVolUpState:I

.field private PreZeroState:I

.field private RecentState:I

.field private SearchState:I

.field private SevenState:I

.field private SixState:I

.field private StarState:I

.field private ThreeState:I

.field private TwoState:I

.field private VolDownState:I

.field private VolUpState:I

.field private ZeroState:I

.field private flag:Z

.field private mKeyPowerStatus:B

.field private wm:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->BackState:I

    return v0
.end method

.method static synthetic -get1(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->CameraState:I

    return v0
.end method

.method static synthetic -get10(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->FiveState:I

    return v0
.end method

.method static synthetic -get11(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->FourState:I

    return v0
.end method

.method static synthetic -get12(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->HashState:I

    return v0
.end method

.method static synthetic -get13(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->HeadSetState:I

    return v0
.end method

.method static synthetic -get14(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->HomeState:I

    return v0
.end method

.method static synthetic -get15(Lcom/lge/android/atservice/KeypadDevice;)[C
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyValue:[C

    return-object v0
.end method

.method static synthetic -get16(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->MenuState:I

    return v0
.end method

.method static synthetic -get17(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->NineState:I

    return v0
.end method

.method static synthetic -get18(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->OneState:I

    return v0
.end method

.method static synthetic -get19(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PowerState:I

    return v0
.end method

.method static synthetic -get2(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->CheckKey:I

    return v0
.end method

.method static synthetic -get20(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreBackState:I

    return v0
.end method

.method static synthetic -get21(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreCameraState:I

    return v0
.end method

.method static synthetic -get22(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreDpadDownState:I

    return v0
.end method

.method static synthetic -get23(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreDpadLeftState:I

    return v0
.end method

.method static synthetic -get24(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreDpadRightState:I

    return v0
.end method

.method static synthetic -get25(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreDpadUpState:I

    return v0
.end method

.method static synthetic -get26(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreEightState:I

    return v0
.end method

.method static synthetic -get27(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreFiveState:I

    return v0
.end method

.method static synthetic -get28(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreFourState:I

    return v0
.end method

.method static synthetic -get29(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreHashState:I

    return v0
.end method

.method static synthetic -get3(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->Count:I

    return v0
.end method

.method static synthetic -get30(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreHeadSetState:I

    return v0
.end method

.method static synthetic -get31(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreHomeState:I

    return v0
.end method

.method static synthetic -get32(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreMenuState:I

    return v0
.end method

.method static synthetic -get33(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreNineState:I

    return v0
.end method

.method static synthetic -get34(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreOneState:I

    return v0
.end method

.method static synthetic -get35(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PrePowerState:I

    return v0
.end method

.method static synthetic -get36(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreRecentState:I

    return v0
.end method

.method static synthetic -get37(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreSearchState:I

    return v0
.end method

.method static synthetic -get38(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreSevenState:I

    return v0
.end method

.method static synthetic -get39(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreSixState:I

    return v0
.end method

.method static synthetic -get4(Lcom/lge/android/atservice/KeypadDevice;)C
    .registers 2

    iget-char v0, p0, Lcom/lge/android/atservice/KeypadDevice;->CurKeyValue:C

    return v0
.end method

.method static synthetic -get40(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreStarState:I

    return v0
.end method

.method static synthetic -get41(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreThreeState:I

    return v0
.end method

.method static synthetic -get42(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreTwoState:I

    return v0
.end method

.method static synthetic -get43(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreVolDownState:I

    return v0
.end method

.method static synthetic -get44(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreVolUpState:I

    return v0
.end method

.method static synthetic -get45(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->PreZeroState:I

    return v0
.end method

.method static synthetic -get46(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->RecentState:I

    return v0
.end method

.method static synthetic -get47(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->SearchState:I

    return v0
.end method

.method static synthetic -get48(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->SevenState:I

    return v0
.end method

.method static synthetic -get49(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->SixState:I

    return v0
.end method

.method static synthetic -get5(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->DpadDownState:I

    return v0
.end method

.method static synthetic -get50(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->StarState:I

    return v0
.end method

.method static synthetic -get51(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->ThreeState:I

    return v0
.end method

.method static synthetic -get52(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->TwoState:I

    return v0
.end method

.method static synthetic -get53(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->VolDownState:I

    return v0
.end method

.method static synthetic -get54(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->VolUpState:I

    return v0
.end method

.method static synthetic -get55(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->ZeroState:I

    return v0
.end method

.method static synthetic -get56(Lcom/lge/android/atservice/KeypadDevice;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/lge/android/atservice/KeypadDevice;->flag:Z

    return v0
.end method

.method static synthetic -get57(Lcom/lge/android/atservice/KeypadDevice;)Landroid/view/IWindowManager;
    .registers 2

    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->wm:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->DpadLeftState:I

    return v0
.end method

.method static synthetic -get7(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->DpadRightState:I

    return v0
.end method

.method static synthetic -get8(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->DpadUpState:I

    return v0
.end method

.method static synthetic -get9(Lcom/lge/android/atservice/KeypadDevice;)I
    .registers 2

    iget v0, p0, Lcom/lge/android/atservice/KeypadDevice;->EightState:I

    return v0
.end method

.method static synthetic -set0(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->BackState:I

    return p1
.end method

.method static synthetic -set1(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->CameraState:I

    return p1
.end method

.method static synthetic -set10(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->FiveState:I

    return p1
.end method

.method static synthetic -set11(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->FourState:I

    return p1
.end method

.method static synthetic -set12(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->HashState:I

    return p1
.end method

.method static synthetic -set13(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->HeadSetState:I

    return p1
.end method

.method static synthetic -set14(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->HomeState:I

    return p1
.end method

.method static synthetic -set15(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->MenuState:I

    return p1
.end method

.method static synthetic -set16(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->NineState:I

    return p1
.end method

.method static synthetic -set17(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->OneState:I

    return p1
.end method

.method static synthetic -set18(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PowerState:I

    return p1
.end method

.method static synthetic -set19(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreBackState:I

    return p1
.end method

.method static synthetic -set2(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->CheckKey:I

    return p1
.end method

.method static synthetic -set20(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreCameraState:I

    return p1
.end method

.method static synthetic -set21(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreDpadDownState:I

    return p1
.end method

.method static synthetic -set22(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreDpadLeftState:I

    return p1
.end method

.method static synthetic -set23(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreDpadRightState:I

    return p1
.end method

.method static synthetic -set24(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreDpadUpState:I

    return p1
.end method

.method static synthetic -set25(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreEightState:I

    return p1
.end method

.method static synthetic -set26(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreFiveState:I

    return p1
.end method

.method static synthetic -set27(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreFourState:I

    return p1
.end method

.method static synthetic -set28(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreHashState:I

    return p1
.end method

.method static synthetic -set29(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreHeadSetState:I

    return p1
.end method

.method static synthetic -set3(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->Count:I

    return p1
.end method

.method static synthetic -set30(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreHomeState:I

    return p1
.end method

.method static synthetic -set31(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreMenuState:I

    return p1
.end method

.method static synthetic -set32(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreNineState:I

    return p1
.end method

.method static synthetic -set33(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreOneState:I

    return p1
.end method

.method static synthetic -set34(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PrePowerState:I

    return p1
.end method

.method static synthetic -set35(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreRecentState:I

    return p1
.end method

.method static synthetic -set36(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreSearchState:I

    return p1
.end method

.method static synthetic -set37(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreSevenState:I

    return p1
.end method

.method static synthetic -set38(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreSixState:I

    return p1
.end method

.method static synthetic -set39(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreStarState:I

    return p1
.end method

.method static synthetic -set4(Lcom/lge/android/atservice/KeypadDevice;C)C
    .registers 2

    iput-char p1, p0, Lcom/lge/android/atservice/KeypadDevice;->CurKeyValue:C

    return p1
.end method

.method static synthetic -set40(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreThreeState:I

    return p1
.end method

.method static synthetic -set41(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreTwoState:I

    return p1
.end method

.method static synthetic -set42(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreVolDownState:I

    return p1
.end method

.method static synthetic -set43(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreVolUpState:I

    return p1
.end method

.method static synthetic -set44(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreZeroState:I

    return p1
.end method

.method static synthetic -set45(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->RecentState:I

    return p1
.end method

.method static synthetic -set46(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->SearchState:I

    return p1
.end method

.method static synthetic -set47(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->SevenState:I

    return p1
.end method

.method static synthetic -set48(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->SixState:I

    return p1
.end method

.method static synthetic -set49(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->StarState:I

    return p1
.end method

.method static synthetic -set5(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->DpadDownState:I

    return p1
.end method

.method static synthetic -set50(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->ThreeState:I

    return p1
.end method

.method static synthetic -set51(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->TwoState:I

    return p1
.end method

.method static synthetic -set52(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->VolDownState:I

    return p1
.end method

.method static synthetic -set53(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->VolUpState:I

    return p1
.end method

.method static synthetic -set54(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->ZeroState:I

    return p1
.end method

.method static synthetic -set6(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->DpadLeftState:I

    return p1
.end method

.method static synthetic -set7(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->DpadRightState:I

    return p1
.end method

.method static synthetic -set8(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->DpadUpState:I

    return p1
.end method

.method static synthetic -set9(Lcom/lge/android/atservice/KeypadDevice;I)I
    .registers 2

    iput p1, p0, Lcom/lge/android/atservice/KeypadDevice;->EightState:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/lge/android/atservice/Device;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/android/atservice/KeypadDevice;->flag:Z

    .line 35
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->Count:I

    .line 36
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->CheckKey:I

    .line 38
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->MenuState:I

    .line 39
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->SearchState:I

    .line 40
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->BackState:I

    .line 41
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->HomeState:I

    .line 42
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->VolDownState:I

    .line 43
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->VolUpState:I

    .line 44
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PowerState:I

    .line 45
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->RecentState:I

    .line 46
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->OneState:I

    .line 47
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->TwoState:I

    .line 48
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->ThreeState:I

    .line 49
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->FourState:I

    .line 50
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->FiveState:I

    .line 51
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->SixState:I

    .line 52
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->SevenState:I

    .line 53
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->EightState:I

    .line 54
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->NineState:I

    .line 55
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->ZeroState:I

    .line 56
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->HashState:I

    .line 57
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->StarState:I

    .line 58
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->CameraState:I

    .line 59
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->DpadDownState:I

    .line 60
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->DpadUpState:I

    .line 61
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->DpadRightState:I

    .line 62
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->DpadLeftState:I

    .line 63
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->HeadSetState:I

    .line 64
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreMenuState:I

    .line 65
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreSearchState:I

    .line 66
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreBackState:I

    .line 67
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreHomeState:I

    .line 68
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreVolDownState:I

    .line 69
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreVolUpState:I

    .line 70
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PrePowerState:I

    .line 71
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreRecentState:I

    .line 72
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreOneState:I

    .line 73
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreTwoState:I

    .line 74
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreThreeState:I

    .line 75
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreFourState:I

    .line 76
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreFiveState:I

    .line 77
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreSixState:I

    .line 78
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreSevenState:I

    .line 79
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreEightState:I

    .line 80
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreNineState:I

    .line 81
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreZeroState:I

    .line 82
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreHashState:I

    .line 83
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreStarState:I

    .line 84
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreCameraState:I

    .line 85
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreDpadDownState:I

    .line 86
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreDpadUpState:I

    .line 87
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreDpadRightState:I

    .line 88
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreDpadLeftState:I

    .line 89
    iput v1, p0, Lcom/lge/android/atservice/KeypadDevice;->PreHeadSetState:I

    .line 91
    const/16 v0, 0x14

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyValue:[C

    .line 92
    const/16 v0, 0xfa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    .line 98
    const/16 v0, 0x30

    iput-byte v0, p0, Lcom/lge/android/atservice/KeypadDevice;->mKeyPowerStatus:B

    .line 99
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->wm:Landroid/view/IWindowManager;

    .line 100
    invoke-virtual {p0}, Lcom/lge/android/atservice/KeypadDevice;->KeyMapSetting()V

    .line 95
    return-void
.end method


# virtual methods
.method public KeyMapSetting()V
    .registers 5

    .prologue
    const/16 v3, 0x52

    .line 335
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x43

    aput v1, v0, v3

    .line 336
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x50

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 337
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x46

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 338
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x4b

    const/16 v2, 0x54

    aput v1, v0, v2

    .line 339
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x4d

    const/16 v2, 0xbb

    aput v1, v0, v2

    .line 340
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x55

    const/16 v2, 0x18

    aput v1, v0, v2

    .line 341
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x44

    const/16 v2, 0x19

    aput v1, v0, v2

    .line 342
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x42

    const/16 v2, 0x1a

    aput v1, v0, v2

    .line 343
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x30

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 344
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x31

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 345
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x32

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 346
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x33

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 347
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x34

    const/16 v2, 0xb

    aput v1, v0, v2

    .line 348
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x35

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 349
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x36

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 350
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x37

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 351
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x38

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 352
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x39

    const/16 v2, 0x10

    aput v1, v0, v2

    .line 353
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x23

    const/16 v2, 0x12

    aput v1, v0, v2

    .line 354
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x2a

    const/16 v2, 0x11

    aput v1, v0, v2

    .line 355
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x41

    const/16 v2, 0x1b

    aput v1, v0, v2

    .line 356
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x56

    const/16 v2, 0x14

    aput v1, v0, v2

    .line 357
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x5e

    const/16 v2, 0x13

    aput v1, v0, v2

    .line 358
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x16

    aput v3, v0, v1

    .line 359
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x4c

    const/16 v2, 0x15

    aput v1, v0, v2

    .line 360
    iget-object v0, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    const/16 v1, 0x48

    const/16 v2, 0x4f

    aput v1, v0, v2

    .line 334
    return-void
.end method

.method public LoggingKeyValue()V
    .registers 2

    .prologue
    .line 104
    new-instance v0, Lcom/lge/android/atservice/KeypadDevice$1;

    invoke-direct {v0, p0}, Lcom/lge/android/atservice/KeypadDevice$1;-><init>(Lcom/lge/android/atservice/KeypadDevice;)V

    invoke-virtual {v0}, Lcom/lge/android/atservice/KeypadDevice$1;->start()V

    .line 103
    return-void
.end method

.method public getKeyPowerStatus([B)I
    .registers 6
    .param p1, "response"    # [B

    .prologue
    const/4 v3, 0x0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v1, "resultBuilder":Ljava/lang/StringBuilder;
    iget-byte v2, p0, Lcom/lge/android/atservice/KeypadDevice;->mKeyPowerStatus:B

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v3, v2, p1, v3}, Ljava/lang/String;->getBytes(II[BI)V

    .line 310
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    return v2
.end method

.method public getKeyValue([B)I
    .registers 8
    .param p1, "response"    # [B

    .prologue
    const/4 v5, 0x0

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v2, "resultBuilder":Ljava/lang/StringBuilder;
    iget-boolean v3, p0, Lcom/lge/android/atservice/KeypadDevice;->flag:Z

    if-eqz v3, :cond_34

    iget v3, p0, Lcom/lge/android/atservice/KeypadDevice;->Count:I

    if-lez v3, :cond_34

    .line 318
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_f
    iget v3, p0, Lcom/lge/android/atservice/KeypadDevice;->Count:I

    if-ge v0, v3, :cond_22

    .line 319
    iget-object v3, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyMap:[I

    iget-object v4, p0, Lcom/lge/android/atservice/KeypadDevice;->KeyValue:[C

    aget-char v4, v4, v0

    aget v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 321
    :cond_22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v5, v3, p1, v5}, Ljava/lang/String;->getBytes(II[BI)V

    .line 329
    .end local v0    # "j":I
    :goto_2d
    iput v5, p0, Lcom/lge/android/atservice/KeypadDevice;->Count:I

    .line 331
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    return v3

    .line 324
    .end local v1    # "result":Ljava/lang/String;
    :cond_34
    const-string/jumbo v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    .restart local v1    # "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v5, v3, p1, v5}, Ljava/lang/String;->getBytes(II[BI)V

    goto :goto_2d
.end method

.method public setKeyPowerOff()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 297
    iput-boolean v0, p0, Lcom/lge/android/atservice/KeypadDevice;->flag:Z

    .line 298
    iput v0, p0, Lcom/lge/android/atservice/KeypadDevice;->Count:I

    .line 299
    const/16 v0, 0x30

    iput-byte v0, p0, Lcom/lge/android/atservice/KeypadDevice;->mKeyPowerStatus:B

    .line 296
    return-void
.end method

.method public setKeyPowerOn()V
    .registers 2

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/android/atservice/KeypadDevice;->flag:Z

    .line 291
    const/16 v0, 0x31

    iput-byte v0, p0, Lcom/lge/android/atservice/KeypadDevice;->mKeyPowerStatus:B

    .line 293
    invoke-virtual {p0}, Lcom/lge/android/atservice/KeypadDevice;->LoggingKeyValue()V

    .line 289
    return-void
.end method
