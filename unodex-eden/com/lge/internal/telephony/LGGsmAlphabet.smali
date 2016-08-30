.class public Lcom/lge/internal/telephony/LGGsmAlphabet;
.super Ljava/lang/Object;
.source "LGGsmAlphabet.java"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/internal/telephony/LGGsmAlphabet;

.field protected static final charToGsmBasicLatin:Landroid/util/SparseIntArray;

.field protected static final charToGsmCyrillic:Landroid/util/SparseIntArray;

.field protected static final charToGsmGeneralPunctuation:Landroid/util/SparseIntArray;

.field protected static final charToGsmGreekCoptic:Landroid/util/SparseIntArray;

.field protected static final charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

.field protected static final charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

.field protected static final charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

.field private static sIsSpanish:Z

.field private static sIsStrict:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->sIsSpanish:Z

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->sIsStrict:Z

    .line 672
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmBasicLatin:Landroid/util/SparseIntArray;

    .line 673
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    .line 674
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    .line 675
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    .line 676
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    .line 677
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmCyrillic:Landroid/util/SparseIntArray;

    .line 678
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGeneralPunctuation:Landroid/util/SparseIntArray;

    .line 681
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xe1

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 682
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xe2

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 683
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xe3

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 684
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x101

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 685
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x103

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 686
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x105

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 687
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1ce

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 688
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1df

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 689
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e1

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 690
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1fb

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 691
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x201

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 692
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x203

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 693
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x227

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 694
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x180

    const/16 v2, 0x62

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 695
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x182

    const/16 v2, 0x62

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 696
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x183

    const/16 v2, 0x62

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 697
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x184

    const/16 v2, 0x62

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 698
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x185

    const/16 v2, 0x62

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 700
    const/4 v0, 0x0

    const-string v1, "VIVO_UCS2GSM_Encoding"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cec

    .line 701
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xe7

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 706
    :goto_eb
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x107

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 707
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x109

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 708
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x10b

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 709
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x10d

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 710
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x188

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 711
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x10f

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 712
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x111

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 713
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x18b

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 714
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x18c

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 715
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x221

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 716
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xea

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 717
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xeb

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 718
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x113

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 719
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x115

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 720
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x117

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 721
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x119

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 722
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x11b

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 723
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x18f

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 724
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x190

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 725
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x205

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 726
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x207

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 727
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x229

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 728
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x192

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 729
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x11d

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 730
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x11f

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 731
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x121

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 732
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x123

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 733
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e5

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 734
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e7

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 735
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f5

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 736
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x125

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 737
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x127

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 738
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x195

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 739
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x21f

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 740
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xed

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 741
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xee

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 742
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xef

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 743
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x129

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 744
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x12b

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 745
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x12f

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 746
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x131

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 747
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x196

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 748
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d0

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 749
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x209

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 750
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x20b

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 751
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x135

    const/16 v2, 0x6a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 752
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f0

    const/16 v2, 0x6a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 753
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x137

    const/16 v2, 0x6b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 754
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x199

    const/16 v2, 0x6b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 755
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e9

    const/16 v2, 0x6b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 756
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x13a

    const/16 v2, 0x6c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 757
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x13c

    const/16 v2, 0x6c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 758
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x13e

    const/16 v2, 0x6c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 759
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x140

    const/16 v2, 0x6c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 760
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x142

    const/16 v2, 0x6c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 761
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x19a

    const/16 v2, 0x6c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 762
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x19c

    const/16 v2, 0x6d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 763
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x144

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 764
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x146

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 765
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x148

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 766
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x149

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 767
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x14b

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 768
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x19e

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 769
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f9

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 770
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x235

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 771
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xf3

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 772
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xf4

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 773
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xf5

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 774
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x14d

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 775
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x14f

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 776
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x151

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 777
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1a1

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 778
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d2

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 779
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1eb

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 780
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1ed

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 781
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x20d

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 782
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x20f

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 783
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x22b

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 784
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x22d

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 785
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x22f

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 786
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x231

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 787
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x153

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 788
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1a5

    const/16 v2, 0x70

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 789
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x155

    const/16 v2, 0x72

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 790
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x157

    const/16 v2, 0x72

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 791
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x159

    const/16 v2, 0x72

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 792
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x211

    const/16 v2, 0x72

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 793
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x213

    const/16 v2, 0x72

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 794
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x15b

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 795
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x15d

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 796
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x15f

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 797
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x161

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 798
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1a8

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 799
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x219

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 800
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x163

    const/16 v2, 0x74

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 801
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x165

    const/16 v2, 0x74

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 802
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x167

    const/16 v2, 0x74

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 803
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1ab

    const/16 v2, 0x74

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 804
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1ad

    const/16 v2, 0x74

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 805
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x21b

    const/16 v2, 0x74

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 806
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x236

    const/16 v2, 0x74

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 807
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xfa

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 808
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xfb

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 809
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x169

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 810
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x16b

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 811
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x16d

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 812
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x16f

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 813
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x171

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 814
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x173

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 815
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1b0

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 816
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d4

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 817
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d6

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 818
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d8

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 819
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1da

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 820
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1dc

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 821
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x215

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 822
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x217

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 823
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1b4

    const/16 v2, 0x76

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 824
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x175

    const/16 v2, 0x77

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 825
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xfd

    const/16 v2, 0x79

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 826
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xff

    const/16 v2, 0x79

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 827
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x177

    const/16 v2, 0x79

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 828
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x233

    const/16 v2, 0x79

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 829
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x17a

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 830
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x17c

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 831
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x17e

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 832
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1b6

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 833
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x225

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 834
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmBasicLatin:Landroid/util/SparseIntArray;

    const/16 v1, 0x60

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 835
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xc0

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 836
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xc1

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 837
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xc2

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 838
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xc3

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 839
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x100

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 840
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x102

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 841
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x104

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 842
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1cd

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 843
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1de

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 844
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e0

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 845
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1fa

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 846
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x200

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 847
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x202

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 848
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x226

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 849
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x181

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 850
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x106

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 851
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x108

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 852
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x10a

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 853
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x10c

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 854
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x186

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 855
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x187

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 856
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xd0

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 857
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x10e

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 858
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x110

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 859
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x189

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 860
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x18a

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 861
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xc8

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 862
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xca

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 863
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xcb

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 864
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x112

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 865
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x114

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 866
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x116

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 867
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x118

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 868
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x11a

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 869
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x18e

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 870
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x204

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 871
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x206

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 872
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x228

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 873
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x191

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 874
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x11c

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 875
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x11e

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 876
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x120

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 877
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x122

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 878
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x193

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 879
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e4

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 880
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e6

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 881
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f4

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 882
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x124

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 883
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x126

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 884
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f6

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 885
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x21e

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 886
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xcc

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 887
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xcd

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 888
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xce

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 889
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xcf

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 890
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x128

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 891
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x12a

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 892
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x12c

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 893
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x12e

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 894
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x130

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 895
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x197

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 896
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1cf

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 897
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x208

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 898
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x20a

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 899
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x134

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 900
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x136

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 901
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x138

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 902
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x198

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 903
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e8

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 904
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x139

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 905
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x13b

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 906
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x13d

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 907
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x13f

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 908
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x141

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 909
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x143

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 910
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x145

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 911
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x147

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 912
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x14a

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 913
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x19d

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 914
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f8

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 915
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xd2

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 916
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xd3

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 917
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xd4

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 918
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xd5

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 919
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x14c

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 920
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x14e

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 921
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x150

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 922
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1a0

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 923
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d1

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 924
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1ea

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 925
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1ec

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 926
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x20c

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 927
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x20e

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 928
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x152

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 929
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1a4

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 930
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x22a

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 931
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x22c

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 932
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x22e

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 933
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x230

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 934
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x154

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 935
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x156

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 936
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x158

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 937
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1a6

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 938
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x210

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 939
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x212

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 940
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x15a

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 941
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x15c

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 942
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x15e

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 943
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x160

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 944
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1a7

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 945
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x218

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 946
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x162

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 947
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x164

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 948
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x166

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 949
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1ac

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 950
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1ae

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 951
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x21a

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 952
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xd9

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 953
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xda

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 954
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xdb

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 955
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x168

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 956
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x16a

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 957
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x16c

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 958
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x16e

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 959
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x170

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 960
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x172

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 961
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1b1

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 962
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1b2

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 963
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d3

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 964
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d5

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 965
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d7

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 966
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d9

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 967
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1db

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 968
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x214

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 969
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x216

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 970
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x174

    const/16 v2, 0x57

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 971
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xdd

    const/16 v2, 0x59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 972
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x176

    const/16 v2, 0x59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 973
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x178

    const/16 v2, 0x59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 974
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1b3

    const/16 v2, 0x59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 975
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x232

    const/16 v2, 0x59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 976
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x179

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 977
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x17b

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 978
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    const/16 v1, 0x17d

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 979
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x1b5

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 980
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    const/16 v1, 0x224

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 981
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x391

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 982
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x386

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 983
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b1

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 984
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3ac

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 985
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x392

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 986
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b2

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 987
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x388

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 988
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x395

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 989
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b5

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 990
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3ad

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 991
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x389

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 992
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x397

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 993
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b7

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 994
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3ae

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 995
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x399

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 996
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x38a

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 997
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3aa

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 998
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b9

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 999
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3af

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1000
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3ca

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1001
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x39a

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1002
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3ba

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1003
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x39c

    const/16 v2, 0x4d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1004
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3bc

    const/16 v2, 0x4d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1005
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x39d

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1006
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3bd

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1007
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x39f

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1008
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x38c

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1009
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3bf

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1010
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3cc

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1011
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3a1

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1012
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c1

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1013
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3a4

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1014
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c4

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1015
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3a7

    const/16 v2, 0x58

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1016
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c7

    const/16 v2, 0x58

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1017
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3a5

    const/16 v2, 0x59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1018
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x38e

    const/16 v2, 0x59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1019
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3ab

    const/16 v2, 0x59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1020
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c5

    const/16 v2, 0x59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1021
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3cd

    const/16 v2, 0x59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1022
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3cb

    const/16 v2, 0x59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1023
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x396

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1024
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b6

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1025
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b4

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1026
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c6

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1027
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b3

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1028
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3bb

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1029
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x38f

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1030
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c9

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1031
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3ce

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1032
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c0

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1033
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c8

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1034
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c3

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1035
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c2

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1036
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b8

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1037
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    const/16 v1, 0x3be

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1039
    const/4 v0, 0x0

    const-string v1, "gsm_strict_encoding"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ce8

    .line 1040
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGeneralPunctuation:Landroid/util/SparseIntArray;

    const/16 v1, 0x201c

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1041
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGeneralPunctuation:Landroid/util/SparseIntArray;

    const/16 v1, 0x2026

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1042
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xb0

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1043
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xb6

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1044
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xb7

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1045
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmCyrillic:Landroid/util/SparseIntArray;

    const/16 v1, 0x413

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1046
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmCyrillic:Landroid/util/SparseIntArray;

    const/16 v1, 0x424

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1047
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmCyrillic:Landroid/util/SparseIntArray;

    const/16 v1, 0x401

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_ce8
    invoke-static {}, Lcom/lge/internal/telephony/LGGsmAlphabet;->ajc$postClinit()V

    .line 1049
    :goto_ceb
    return-void

    .line 704
    :cond_cec
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    const/16 v1, 0xe7

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_cf5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_cf5} :catch_cf7

    goto/16 :goto_eb

    .line 1047
    :catch_cf7
    move-exception v0

    sput-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_ceb
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_internal_telephony_LGGsmAlphabet$1$80b72962proceed(Ljava/lang/String;[BIILorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 8
    .param p0, "this"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p4, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_internal_telephony_LGGsmAlphabet$2$19c59daaproceed(Ljava/lang/String;IZIILorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 9
    .param p0, "this"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p5, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_internal_telephony_LGGsmAlphabet$3$af4a2356proceed([BIIIIILorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 10
    .param p0, "this"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p5}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p6, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/internal/telephony/LGGsmAlphabet;

    invoke-direct {v0}, Lcom/lge/internal/telephony/LGGsmAlphabet;-><init>()V

    sput-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->ajc$perSingletonInstance:Lcom/lge/internal/telephony/LGGsmAlphabet;

    return-void
.end method

.method public static ajc$privMethod$com_lge_internal_telephony_LGGsmAlphabet$com_lge_internal_telephony_LGGsmAlphabet$countGsmSeptetsUsingTablesLossyAutoWithNationalLanguage(ZILjava/util/List;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 4

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/internal/telephony/LGGsmAlphabet;->countGsmSeptetsUsingTablesLossyAutoWithNationalLanguage(ZILjava/util/List;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$privMethod$com_lge_internal_telephony_LGGsmAlphabet$com_lge_internal_telephony_LGGsmAlphabet$countGsmSeptetsUsingTablesLossyAutoWithoutNationalLangauge(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/internal/telephony/LGGsmAlphabet;->countGsmSeptetsUsingTablesLossyAutoWithoutNationalLangauge(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$privMethod$com_lge_internal_telephony_LGGsmAlphabet$com_lge_internal_telephony_LGGsmAlphabet$setLossy7bitTableCondition()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/internal/telephony/LGGsmAlphabet;->setLossy7bitTableCondition()V

    return-void
.end method

.method public static aspectOf()Lcom/lge/internal/telephony/LGGsmAlphabet;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->ajc$perSingletonInstance:Lcom/lge/internal/telephony/LGGsmAlphabet;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_internal_telephony_LGGsmAlphabet"

    sget-object v2, Lcom/lge/internal/telephony/LGGsmAlphabet;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->ajc$perSingletonInstance:Lcom/lge/internal/telephony/LGGsmAlphabet;

    return-object v0
.end method

.method public static countGsmSeptetsLossyAuto(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 16
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 136
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sDisableCountryEncodingCheck()Z

    move-result v10

    if-nez v10, :cond_9

    .line 137
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$privMethod$com_lge_internal_telephony_LGGsmAlphabet$com_android_internal_telephony_GsmAlphabet$enableCountrySpecificEncodings()V

    .line 141
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sEnabledSingleShiftTables()[I

    move-result-object v10

    array-length v10, v10

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sEnabledLockingShiftTables()[I

    move-result-object v11

    array-length v11, v11

    add-int/2addr v10, v11

    if-nez v10, :cond_1b

    .line 142
    invoke-static {p0, p1}, Lcom/lge/internal/telephony/LGGsmAlphabet;->ajc$privMethod$com_lge_internal_telephony_LGGsmAlphabet$com_lge_internal_telephony_LGGsmAlphabet$countGsmSeptetsUsingTablesLossyAutoWithoutNationalLangauge(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v9

    .line 209
    :cond_1a
    :goto_1a
    return-object v9

    .line 145
    :cond_1b
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sHighestEnabledSingleShiftCode()I

    move-result v4

    .line 146
    .local v4, "maxSingleShiftCode":I
    new-instance v3, Ljava/util/ArrayList;

    .line 147
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sEnabledLockingShiftTables()[I

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    .line 146
    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    .local v3, "lpcList":Ljava/util/List;
    new-instance v10, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sEnabledLockingShiftTables()[I

    move-result-object v11

    array-length v12, v11

    const/4 v10, 0x0

    :goto_3a
    if-lt v10, v12, :cond_5b

    .line 158
    if-eqz p1, :cond_41

    .line 159
    invoke-static {}, Lcom/lge/internal/telephony/LGGsmAlphabet;->ajc$privMethod$com_lge_internal_telephony_LGGsmAlphabet$com_lge_internal_telephony_LGGsmAlphabet$setLossy7bitTableCondition()V

    .line 162
    :cond_41
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 164
    .local v6, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_46
    if-ge v1, v6, :cond_4e

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_76

    .line 203
    :cond_4e
    invoke-static {p1, v4, v3}, Lcom/lge/internal/telephony/LGGsmAlphabet;->ajc$privMethod$com_lge_internal_telephony_LGGsmAlphabet$com_lge_internal_telephony_LGGsmAlphabet$countGsmSeptetsUsingTablesLossyAutoWithNationalLanguage(ZILjava/util/List;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v9

    .line 205
    .local v9, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v10, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const v11, 0x7fffffff

    if-ne v10, v11, :cond_1a

    .line 206
    const/4 v9, 0x0

    goto :goto_1a

    .line 151
    .end local v1    # "i":I
    .end local v6    # "sz":I
    .end local v9    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_5b
    aget v1, v11, v10

    .line 153
    .restart local v1    # "i":I
    if-eqz v1, :cond_73

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sLanguageTables()[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v1

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_73

    .line 154
    new-instance v13, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    invoke-direct {v13, v1}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_73
    add-int/lit8 v10, v10, 0x1

    goto :goto_3a

    .line 165
    .restart local v6    # "sz":I
    :cond_76
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 166
    .local v0, "c":C
    const/16 v10, 0x1b

    if-ne v0, v10, :cond_88

    .line 167
    const-string v10, "GSM"

    const-string v11, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 171
    :cond_88
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_85

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 172
    .local v2, "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sCharsToGsmTables()[Landroid/util/SparseIntArray;

    move-result-object v11

    invoke-static {v2}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->ajc$get$languageCode(Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;)I

    move-result v12

    aget-object v11, v11, v12

    const/4 v12, -0x1

    invoke-virtual {v11, v0, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 173
    .local v8, "tableIndex":I
    const/4 v11, -0x1

    if-ne v8, v11, :cond_f7

    .line 175
    const/4 v7, 0x0

    .local v7, "table":I
    :goto_ab
    if-gt v7, v4, :cond_8c

    .line 176
    invoke-static {v2}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->ajc$get$septetCounts(Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;)[I

    move-result-object v11

    aget v11, v11, v7

    const/4 v12, -0x1

    if-eq v11, v12, :cond_e1

    .line 177
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sCharsToShiftTables()[Landroid/util/SparseIntArray;

    move-result-object v11

    aget-object v11, v11, v7

    const/4 v12, -0x1

    invoke-virtual {v11, v0, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 178
    .local v5, "shiftTableIndex":I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_ec

    .line 179
    if-eqz p1, :cond_e4

    invoke-static {v0}, Lcom/lge/internal/telephony/LGGsmAlphabet;->lookupLossy7bitTable(C)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_e4

    .line 180
    invoke-static {v2}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->ajc$get$septetCounts(Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;)[I

    move-result-object v11

    aget v12, v11, v7

    add-int/lit8 v12, v12, 0x1

    aput v12, v11, v7

    .line 181
    invoke-static {v2}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->ajc$get$unencodableCounts(Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;)[I

    move-result-object v11

    aget v12, v11, v7

    add-int/lit8 v12, v12, 0x1

    aput v12, v11, v7

    .line 175
    .end local v5    # "shiftTableIndex":I
    :cond_e1
    :goto_e1
    add-int/lit8 v7, v7, 0x1

    goto :goto_ab

    .line 184
    .restart local v5    # "shiftTableIndex":I
    :cond_e4
    invoke-static {v2}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->ajc$get$septetCounts(Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;)[I

    move-result-object v11

    const/4 v12, -0x1

    aput v12, v11, v7

    goto :goto_e1

    .line 188
    :cond_ec
    invoke-static {v2}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->ajc$get$septetCounts(Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;)[I

    move-result-object v11

    aget v12, v11, v7

    add-int/lit8 v12, v12, 0x2

    aput v12, v11, v7

    goto :goto_e1

    .line 194
    .end local v5    # "shiftTableIndex":I
    .end local v7    # "table":I
    :cond_f7
    const/4 v7, 0x0

    .restart local v7    # "table":I
    :goto_f8
    if-gt v7, v4, :cond_8c

    .line 195
    invoke-static {v2}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->ajc$get$septetCounts(Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;)[I

    move-result-object v11

    aget v11, v11, v7

    const/4 v12, -0x1

    if-eq v11, v12, :cond_10d

    .line 196
    invoke-static {v2}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->ajc$get$septetCounts(Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;)[I

    move-result-object v11

    aget v12, v11, v7

    add-int/lit8 v12, v12, 0x1

    aput v12, v11, v7

    .line 194
    :cond_10d
    add-int/lit8 v7, v7, 0x1

    goto :goto_f8
.end method

.method public static countGsmSeptetsUsingTablesLossyAuto(Ljava/lang/CharSequence;ZII)I
    .registers 13
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I

    .prologue
    const/4 v6, -0x1

    .line 78
    const/4 v3, 0x0

    .line 79
    .local v3, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 81
    .local v5, "sz":I
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sCharsToGsmTables()[Landroid/util/SparseIntArray;

    move-result-object v7

    aget-object v1, v7, p2

    .line 82
    .local v1, "charToLanguageTable":Landroid/util/SparseIntArray;
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sCharsToShiftTables()[Landroid/util/SparseIntArray;

    move-result-object v7

    aget-object v2, v7, p3

    .line 84
    .local v2, "charToShiftTable":Landroid/util/SparseIntArray;
    if-eqz p1, :cond_17

    .line 85
    invoke-static {}, Lcom/lge/internal/telephony/LGGsmAlphabet;->ajc$privMethod$com_lge_internal_telephony_LGGsmAlphabet$com_lge_internal_telephony_LGGsmAlphabet$setLossy7bitTableCondition()V

    .line 88
    :cond_17
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    if-lt v4, v5, :cond_1b

    .line 109
    .end local v3    # "count":I
    :goto_1a
    return v3

    .line 89
    .restart local v3    # "count":I
    :cond_1b
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 90
    .local v0, "c":C
    const/16 v7, 0x1b

    if-ne v0, v7, :cond_2d

    .line 91
    const-string v7, "GSM"

    const-string v8, "countGsmSeptets() string contains Escape character, skipping."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 95
    :cond_2d
    invoke-virtual {v1, v0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_36

    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 97
    goto :goto_2a

    :cond_36
    invoke-virtual {v2, v0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_3f

    .line 98
    add-int/lit8 v3, v3, 0x2

    .line 99
    goto :goto_2a

    :cond_3f
    if-eqz p1, :cond_4c

    .line 100
    invoke-static {v0}, Lcom/lge/internal/telephony/LGGsmAlphabet;->lookupLossy7bitTable(C)I

    move-result v7

    if-eq v7, v6, :cond_4a

    .line 101
    add-int/lit8 v3, v3, 0x1

    .line 102
    goto :goto_2a

    :cond_4a
    move v3, v6

    .line 103
    goto :goto_1a

    :cond_4c
    move v3, v6

    .line 106
    goto :goto_1a
.end method

.method private static countGsmSeptetsUsingTablesLossyAutoWithNationalLanguage(ZILjava/util/List;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 16
    .param p0, "use7bitOnly"    # Z
    .param p1, "maxSingleShiftCode"    # I
    .param p2, "lpcList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;",
            ">;)",
            "Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v7}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 223
    .local v7, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const v10, 0x7fffffff

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 224
    const/4 v10, 0x1

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 225
    const v1, 0x7fffffff

    .line 227
    .local v1, "minUnencodableCount":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1b

    .line 286
    return-object v7

    .line 227
    :cond_1b
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 228
    .local v0, "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    const/4 v6, 0x0

    .local v6, "shiftTable":I
    :goto_22
    if-gt v6, p1, :cond_14

    .line 230
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->ajc$get$septetCounts(Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;)[I

    move-result-object v11

    aget v3, v11, v6

    .line 232
    .local v3, "septets":I
    const/4 v11, -0x1

    if-ne v3, v11, :cond_30

    .line 228
    :cond_2d
    :goto_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 238
    :cond_30
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->ajc$get$languageCode(Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;)I

    move-result v11

    if-eqz v11, :cond_7b

    if-eqz v6, :cond_7b

    .line 239
    const/16 v8, 0x8

    .line 249
    :goto_3a
    add-int v11, v3, v8

    const/16 v12, 0xa0

    if-le v11, v12, :cond_87

    .line 250
    if-nez v8, :cond_43

    .line 251
    const/4 v8, 0x1

    .line 254
    :cond_43
    add-int/lit8 v8, v8, 0x6

    .line 256
    .local v8, "udhLength":I
    rsub-int v4, v8, 0xa0

    .line 258
    .local v4, "septetsPerMessage":I
    add-int v11, v3, v4

    add-int/lit8 v11, v11, -0x1

    div-int v2, v11, v4

    .line 260
    .local v2, "msgCount":I
    mul-int v11, v2, v4

    sub-int v5, v11, v3

    .line 267
    .end local v4    # "septetsPerMessage":I
    .end local v8    # "udhLength":I
    :goto_51
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->ajc$get$unencodableCounts(Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;)[I

    move-result-object v11

    aget v9, v11, v6

    .line 269
    .local v9, "unencodableCount":I
    if-eqz p0, :cond_5b

    if-gt v9, v1, :cond_2d

    .line 273
    :cond_5b
    if-eqz p0, :cond_5f

    if-lt v9, v1, :cond_6b

    .line 274
    :cond_5f
    iget v11, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-lt v2, v11, :cond_6b

    iget v11, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v2, v11, :cond_2d

    .line 275
    iget v11, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    if-le v5, v11, :cond_2d

    .line 276
    :cond_6b
    move v1, v9

    .line 277
    iput v2, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 278
    iput v3, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 279
    iput v5, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 280
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->ajc$get$languageCode(Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;)I

    move-result v11

    iput v11, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 281
    iput v6, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    goto :goto_2d

    .line 240
    .end local v2    # "msgCount":I
    .end local v9    # "unencodableCount":I
    :cond_7b
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->ajc$get$languageCode(Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;)I

    move-result v11

    if-nez v11, :cond_83

    if-eqz v6, :cond_85

    .line 241
    :cond_83
    const/4 v8, 0x5

    .line 242
    goto :goto_3a

    .line 243
    :cond_85
    const/4 v8, 0x0

    .restart local v8    # "udhLength":I
    goto :goto_3a

    .line 262
    .end local v8    # "udhLength":I
    :cond_87
    const/4 v2, 0x1

    .line 263
    .restart local v2    # "msgCount":I
    rsub-int v11, v8, 0xa0

    sub-int v5, v11, v3

    .local v5, "septetsRemaining":I
    goto :goto_51
.end method

.method private static countGsmSeptetsUsingTablesLossyAutoWithoutNationalLangauge(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 6
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 302
    new-instance v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 303
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-static {p0, p1, v2, v2}, Lcom/lge/internal/telephony/LGGsmAlphabet;->countGsmSeptetsUsingTablesLossyAuto(Ljava/lang/CharSequence;ZII)I

    move-result v0

    .line 305
    .local v0, "septets":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_10

    .line 306
    const/4 v1, 0x0

    .line 324
    .end local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_f
    return-object v1

    .line 309
    .restart local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_10
    iput v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 310
    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 312
    const/16 v2, 0xa0

    if-le v0, v2, :cond_28

    .line 313
    add-int/lit16 v2, v0, 0x98

    .line 314
    div-int/lit16 v2, v2, 0x99

    .line 313
    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 315
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 316
    mul-int/lit16 v2, v2, 0x99

    sub-int/2addr v2, v0

    .line 315
    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 322
    :goto_25
    iput v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_f

    .line 318
    :cond_28
    iput v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 319
    rsub-int v2, v0, 0xa0

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_25
.end method

.method public static getEnabledLockingShiftTablesLG()[I
    .registers 1

    .prologue
    .line 348
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sEnabledLockingShiftTables()[I

    move-result-object v0

    return-object v0
.end method

.method public static getEnabledSingleShiftTablesLG()[I
    .registers 1

    .prologue
    .line 336
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sEnabledSingleShiftTables()[I

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIIIII)Ljava/lang/String;
    .registers 21
    .param p0, "pdu"    # [B
    .param p1, "offset"    # I
    .param p2, "lengthSeptets"    # I
    .param p3, "numPaddingBits"    # I
    .param p4, "languageTable"    # I
    .param p5, "shiftTable"    # I

    .prologue
    .line 595
    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 597
    .local v9, "ret":Ljava/lang/StringBuilder;
    if-ltz p4, :cond_12

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sLanguageTables()[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    move/from16 v0, p4

    if-le v0, v12, :cond_30

    .line 598
    :cond_12
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "unknown language table "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/16 p4, 0x0

    .line 601
    :cond_30
    if-ltz p5, :cond_3b

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sLanguageShiftTables()[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    move/from16 v0, p5

    if-le v0, v12, :cond_59

    .line 602
    :cond_3b
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "unknown single shift table "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/16 p5, 0x0

    .line 607
    :cond_59
    const/4 v8, 0x0

    .line 608
    .local v8, "prevCharWasEscape":Z
    :try_start_5a
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sLanguageTables()[Ljava/lang/String;

    move-result-object v12

    aget-object v7, v12, p4

    .line 609
    .local v7, "languageTableToChar":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sLanguageShiftTables()[Ljava/lang/String;

    move-result-object v12

    aget-object v11, v12, p5

    .line 611
    .local v11, "shiftTableToChar":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8f

    .line 612
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "no language table for code "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sLanguageTables()[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v7, v12, v13

    .line 615
    :cond_8f
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_b8

    .line 616
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "no single shift table for code "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sLanguageShiftTables()[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v11, v12, v13
    :try_end_b8
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_b8} :catch_112

    .line 620
    :cond_b8
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_b9
    move/from16 v0, p2

    if-lt v6, v0, :cond_c2

    .line 669
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .end local v6    # "i":I
    .end local v7    # "languageTableToChar":Ljava/lang/String;
    .end local v11    # "shiftTableToChar":Ljava/lang/String;
    :goto_c1
    return-object v12

    .line 621
    .restart local v6    # "i":I
    .restart local v7    # "languageTableToChar":Ljava/lang/String;
    .restart local v11    # "shiftTableToChar":Ljava/lang/String;
    :cond_c2
    mul-int/lit8 v12, v6, 0x7

    add-int v1, v12, p3

    .line 623
    .local v1, "bitOffset":I
    :try_start_c6
    div-int/lit8 v2, v1, 0x8

    .line 624
    .local v2, "byteOffset":I
    rem-int/lit8 v10, v1, 0x8

    .line 625
    .local v10, "shift":I
    const/4 v5, 0x1

    .line 627
    .local v5, "gsmVal":I
    add-int v12, p1, v2

    array-length v13, p0

    if-ge v12, v13, :cond_d7

    .line 628
    add-int v12, p1, v2

    aget-byte v12, p0, v12

    shr-int/2addr v12, v10

    and-int/lit8 v5, v12, 0x7f

    .line 633
    :cond_d7
    const/4 v12, 0x1

    if-le v10, v12, :cond_f3

    .line 635
    const/16 v12, 0x7f

    add-int/lit8 v13, v10, -0x1

    shr-int/2addr v12, v13

    and-int/2addr v5, v12

    .line 637
    add-int v12, p1, v2

    add-int/lit8 v12, v12, 0x1

    array-length v13, p0

    if-ge v12, v13, :cond_f3

    .line 638
    add-int v12, p1, v2

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, p0, v12

    rsub-int/lit8 v13, v10, 0x8

    shl-int/2addr v12, v13

    and-int/lit8 v12, v12, 0x7f

    or-int/2addr v5, v12

    .line 643
    :cond_f3
    if-eqz v8, :cond_121

    .line 644
    const/16 v12, 0x1b

    if-ne v5, v12, :cond_102

    .line 645
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 654
    :goto_fe
    const/4 v8, 0x0

    .line 620
    :goto_ff
    add-int/lit8 v6, v6, 0x1

    goto :goto_b9

    .line 647
    :cond_102
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 648
    .local v3, "c":C
    const/16 v12, 0x20

    if-ne v3, v12, :cond_11d

    .line 649
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_111
    .catch Ljava/lang/RuntimeException; {:try_start_c6 .. :try_end_111} :catch_112

    goto :goto_fe

    .line 661
    .end local v1    # "bitOffset":I
    .end local v2    # "byteOffset":I
    .end local v3    # "c":C
    .end local v5    # "gsmVal":I
    .end local v6    # "i":I
    .end local v7    # "languageTableToChar":Ljava/lang/String;
    .end local v10    # "shift":I
    .end local v11    # "shiftTableToChar":Ljava/lang/String;
    :catch_112
    move-exception v4

    .line 662
    .local v4, "ex":Ljava/lang/RuntimeException;
    const-string v12, "GSM"

    const-string v13, "Error GSM 7 bit packed: "

    invoke-static {v12, v13, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    const-string v12, "It is a wrong formatted message"

    goto :goto_c1

    .line 651
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "bitOffset":I
    .restart local v2    # "byteOffset":I
    .restart local v3    # "c":C
    .restart local v5    # "gsmVal":I
    .restart local v6    # "i":I
    .restart local v7    # "languageTableToChar":Ljava/lang/String;
    .restart local v10    # "shift":I
    .restart local v11    # "shiftTableToChar":Ljava/lang/String;
    :cond_11d
    :try_start_11d
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fe

    .line 655
    .end local v3    # "c":C
    :cond_121
    const/16 v12, 0x1b

    if-ne v5, v12, :cond_127

    .line 656
    const/4 v8, 0x1

    .line 657
    goto :goto_ff

    .line 658
    :cond_127
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_12e
    .catch Ljava/lang/RuntimeException; {:try_start_11d .. :try_end_12e} :catch_112

    goto :goto_ff
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/internal/telephony/LGGsmAlphabet;->ajc$perSingletonInstance:Lcom/lge/internal/telephony/LGGsmAlphabet;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected static lookupLossy7bitTable(C)I
    .registers 4
    .param p0, "c"    # C

    .prologue
    const/4 v2, -0x1

    .line 361
    const/4 v0, -0x1

    .line 363
    .local v0, "v":I
    const/16 v1, 0x80

    if-ge p0, v1, :cond_15

    .line 364
    sget-object v1, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmBasicLatin:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 384
    :cond_c
    :goto_c
    sget-boolean v1, Lcom/lge/internal/telephony/LGGsmAlphabet;->sIsStrict:Z

    if-eqz v1, :cond_14

    .line 385
    if-ne v0, v2, :cond_14

    .line 387
    const/16 v0, 0x20

    .line 392
    :cond_14
    return v0

    .line 365
    :cond_15
    const/16 v1, 0xe7

    if-ne p0, v1, :cond_20

    sget-boolean v1, Lcom/lge/internal/telephony/LGGsmAlphabet;->sIsSpanish:Z

    if-eqz v1, :cond_20

    .line 366
    const/16 v0, 0x9

    .line 367
    goto :goto_c

    :cond_20
    const/16 v1, 0x7f

    if-le p0, v1, :cond_2f

    const/16 v1, 0x100

    if-ge p0, v1, :cond_2f

    .line 368
    sget-object v1, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatin1Supplement:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 369
    goto :goto_c

    :cond_2f
    const/16 v1, 0xff

    if-le p0, v1, :cond_3e

    const/16 v1, 0x180

    if-ge p0, v1, :cond_3e

    .line 370
    sget-object v1, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedA:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 371
    goto :goto_c

    :cond_3e
    const/16 v1, 0x17f

    if-le p0, v1, :cond_4d

    const/16 v1, 0x250

    if-ge p0, v1, :cond_4d

    .line 372
    sget-object v1, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmLatinExtendedB:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 373
    goto :goto_c

    :cond_4d
    const/16 v1, 0x36f

    if-le p0, v1, :cond_5c

    const/16 v1, 0x400

    if-ge p0, v1, :cond_5c

    .line 374
    sget-object v1, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGreekCoptic:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 375
    goto :goto_c

    :cond_5c
    const/16 v1, 0x3ff

    if-le p0, v1, :cond_6b

    const/16 v1, 0x500

    if-ge p0, v1, :cond_6b

    .line 376
    sget-object v1, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmCyrillic:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 377
    goto :goto_c

    :cond_6b
    const/16 v1, 0x1fff

    if-le p0, v1, :cond_c

    const/16 v1, 0x2070

    if-ge p0, v1, :cond_c

    .line 378
    sget-object v1, Lcom/lge/internal/telephony/LGGsmAlphabet;->charToGsmGeneralPunctuation:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_c
.end method

.method private static setLossy7bitTableCondition()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 405
    const-string v2, "persist.radio.sms.phoneid"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 406
    .local v1, "phoneId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "mSIMoperator":Ljava/lang/String;
    sput-boolean v4, Lcom/lge/internal/telephony/LGGsmAlphabet;->sIsSpanish:Z

    .line 410
    sput-boolean v4, Lcom/lge/internal/telephony/LGGsmAlphabet;->sIsStrict:Z

    .line 411
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2c

    .line 412
    const/4 v2, 0x3

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "214"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 414
    sput-boolean v5, Lcom/lge/internal/telephony/LGGsmAlphabet;->sIsSpanish:Z

    .line 418
    :cond_2c
    const/4 v2, 0x0

    const-string v3, "gsm_strict_encoding"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 419
    sput-boolean v5, Lcom/lge/internal/telephony/LGGsmAlphabet;->sIsStrict:Z

    .line 422
    :cond_37
    return-void
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZII)[B
    .registers 20
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "startingSeptetOffset"    # I
    .param p2, "throwException"    # Z
    .param p3, "languageTable"    # I
    .param p4, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 508
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 515
    .local v7, "dataLen":I
    if-eqz p2, :cond_1a

    const/4 v13, 0x0

    :goto_7
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {p0, v13, v0, v1}, Lcom/lge/internal/telephony/LGGsmAlphabet;->countGsmSeptetsUsingTablesLossyAuto(Ljava/lang/CharSequence;ZII)I

    move-result v10

    .line 519
    .local v10, "septetCount":I
    const/4 v13, -0x1

    if-ne v10, v13, :cond_1c

    .line 520
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string v14, "countGsmSeptetsUsingTables(): unencodable char"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 515
    .end local v10    # "septetCount":I
    :cond_1a
    const/4 v13, 0x1

    goto :goto_7

    .line 522
    .restart local v10    # "septetCount":I
    :cond_1c
    add-int v10, v10, p1

    .line 523
    const/16 v13, 0xff

    if-le v10, v13, :cond_2a

    .line 524
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string v14, "Payload cannot exceed 255 septets"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 526
    :cond_2a
    mul-int/lit8 v13, v10, 0x7

    add-int/lit8 v13, v13, 0x7

    div-int/lit8 v3, v13, 0x8

    .line 527
    .local v3, "byteCount":I
    add-int/lit8 v13, v3, 0x1

    new-array v9, v13, [B

    .line 528
    .local v9, "ret":[B
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sCharsToGsmTables()[Landroid/util/SparseIntArray;

    move-result-object v13

    aget-object v5, v13, p3

    .line 529
    .local v5, "charToLanguageTable":Landroid/util/SparseIntArray;
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$get$sCharsToShiftTables()[Landroid/util/SparseIntArray;

    move-result-object v13

    aget-object v6, v13, p4

    .line 531
    .local v6, "charToShiftTable":Landroid/util/SparseIntArray;
    if-nez p2, :cond_45

    .line 532
    invoke-static {}, Lcom/lge/internal/telephony/LGGsmAlphabet;->ajc$privMethod$com_lge_internal_telephony_LGGsmAlphabet$com_lge_internal_telephony_LGGsmAlphabet$setLossy7bitTableCondition()V

    .line 535
    :cond_45
    const/4 v8, 0x0

    .local v8, "i":I
    move/from16 v11, p1

    .local v11, "septets":I
    mul-int/lit8 v2, p1, 0x7

    .line 536
    .local v2, "bitOffset":I
    :goto_4a
    if-ge v8, v7, :cond_4e

    .line 535
    if-lt v11, v10, :cond_53

    .line 569
    :cond_4e
    const/4 v13, 0x0

    int-to-byte v14, v10

    aput-byte v14, v9, v13

    .line 570
    return-object v9

    .line 538
    :cond_53
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 539
    .local v4, "c":C
    const/4 v13, -0x1

    invoke-virtual {v5, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 540
    .local v12, "v":I
    const/4 v13, -0x1

    if-ne v12, v13, :cond_81

    .line 541
    const/4 v13, -0x1

    invoke-virtual {v6, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 542
    const/4 v13, -0x1

    if-ne v12, v13, :cond_78

    .line 551
    if-nez p2, :cond_6d

    .line 553
    invoke-static {v4}, Lcom/lge/internal/telephony/LGGsmAlphabet;->lookupLossy7bitTable(C)I

    move-result v12

    .line 556
    :cond_6d
    const/4 v13, -0x1

    if-ne v12, v13, :cond_81

    .line 557
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string v14, "stringToGsm7BitPacked(): unencodable char"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 561
    :cond_78
    const/16 v13, 0x1b

    invoke-static {v9, v2, v13}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$privMethod$com_lge_internal_telephony_LGGsmAlphabet$com_android_internal_telephony_GsmAlphabet$packSmsChar([BII)V

    .line 562
    add-int/lit8 v2, v2, 0x7

    .line 563
    add-int/lit8 v11, v11, 0x1

    .line 566
    :cond_81
    invoke-static {v9, v2, v12}, Lcom/android/internal/telephony/GsmAlphabet;->ajc$privMethod$com_lge_internal_telephony_LGGsmAlphabet$com_android_internal_telephony_GsmAlphabet$packSmsChar([BII)V

    .line 567
    add-int/lit8 v11, v11, 0x1

    .line 537
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v2, v2, 0x7

    goto :goto_4a
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    .registers 13
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 458
    const-string v7, "persist.gsm.sms.forcegsm7"

    const-string v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "encodingType":Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    move v3, v5

    .line 460
    .local v3, "isThrowException":Z
    :goto_13
    if-eqz p1, :cond_18

    array-length v7, p1

    if-nez v7, :cond_1f

    .line 461
    :cond_18
    invoke-static {p0, v5, v3, p2, p3}, Lcom/lge/internal/telephony/LGGsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v4

    .line 479
    :goto_1c
    return-object v4

    .end local v3    # "isThrowException":Z
    :cond_1d
    move v3, v6

    .line 459
    goto :goto_13

    .line 465
    .restart local v3    # "isThrowException":Z
    :cond_1f
    array-length v7, p1

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v1, v7, 0x8

    .line 466
    .local v1, "headerBits":I
    add-int/lit8 v7, v1, 0x6

    div-int/lit8 v2, v7, 0x7

    .line 473
    .local v2, "headerSeptets":I
    invoke-static {p0, v2, v3, p2, p3}, Lcom/lge/internal/telephony/LGGsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v4

    .line 477
    .local v4, "ret":[B
    array-length v7, p1

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 478
    const/4 v6, 0x2

    array-length v7, p1

    invoke-static {p1, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_1c
.end method


# virtual methods
.method public ajc$around$com_lge_internal_telephony_LGGsmAlphabet$1$80b72962(Ljava/lang/String;[BIILorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 7
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "header"    # [B
    .param p3, "languageTable"    # I
    .param p4, "languageShiftTable"    # I
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "data,header,languageTable,languageShiftTable,ajc$aroundClosure"
        value = "(execution(public static byte GsmAlphabet.stringToGsm7BitPackedWithHeader(String, byte, int, int)) && args(data, header, languageTable, languageShiftTable))"
    .end annotation

    .prologue
    .line 46
    invoke-static {p1, p2, p3, p4}, Lcom/lge/internal/telephony/LGGsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_internal_telephony_LGGsmAlphabet$2$19c59daa(Ljava/lang/String;IZIILorg/aspectj/runtime/internal/AroundClosure;)[B
    .registers 8
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "startingSeptetOffset"    # I
    .param p3, "throwException"    # Z
    .param p4, "languageTable"    # I
    .param p5, "languageShiftTable"    # I
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "data,startingSeptetOffset,throwException,languageTable,languageShiftTable,ajc$aroundClosure"
        value = "(execution(public static byte GsmAlphabet.stringToGsm7BitPacked(String, int, boolean, int, int)) && args(data, startingSeptetOffset, throwException, languageTable, languageShiftTable))"
    .end annotation

    .prologue
    .line 51
    invoke-static {p1, p2, p3, p4, p5}, Lcom/lge/internal/telephony/LGGsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_internal_telephony_LGGsmAlphabet$3$af4a2356([BIIIIILorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 9
    .param p1, "pdu"    # [B
    .param p2, "offset"    # I
    .param p3, "lengthSeptets"    # I
    .param p4, "numPaddingBits"    # I
    .param p5, "languageTable"    # I
    .param p6, "shiftTable"    # I
    .param p7, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "pdu,offset,lengthSeptets,numPaddingBits,languageTable,shiftTable,ajc$aroundClosure"
        value = "(execution(public static String GsmAlphabet.gsm7BitPackedToString(byte, int, int, int, int, int)) && args(pdu, offset, lengthSeptets, numPaddingBits, languageTable, shiftTable))"
    .end annotation

    .prologue
    .line 56
    invoke-static/range {p1 .. p6}, Lcom/lge/internal/telephony/LGGsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
