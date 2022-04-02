.class public final Lcom/tappx/sdk/android/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/sdk/android/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontVariationSettings:I = 0x4

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_android_ttcIndex:I = 0x3

.field public static final FontFamilyFont_font:I = 0x5

.field public static final FontFamilyFont_fontStyle:I = 0x6

.field public static final FontFamilyFont_fontVariationSettings:I = 0x7

.field public static final FontFamilyFont_fontWeight:I = 0x8

.field public static final FontFamilyFont_ttcIndex:I = 0x9

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x0

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x2

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2

.field public static final TappxParams:[I

.field public static final TappxParams_txAdSize:I = 0x0

.field public static final TappxParams_txAppKey:I = 0x1

.field public static final TappxParams_txAutoPrivacyDisclaimer:I = 0x2

.field public static final TappxParams_txRefreshTime:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_30

    sput-object v1, Lcom/tappx/sdk/android/R$styleable;->AdsAttrs:[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_3a

    sput-object v1, Lcom/tappx/sdk/android/R$styleable;->FontFamily:[I

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_4a

    sput-object v1, Lcom/tappx/sdk/android/R$styleable;->FontFamilyFont:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_62

    sput-object v1, Lcom/tappx/sdk/android/R$styleable;->LoadingImageView:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/tappx/sdk/android/R$styleable;->SignInButton:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_76

    sput-object v0, Lcom/tappx/sdk/android/R$styleable;->TappxParams:[I

    return-void

    :array_30
    .array-data 4
        0x7f040023
        0x7f040024
        0x7f040025
    .end array-data

    :array_3a
    .array-data 4
        0x7f040132
        0x7f040133
        0x7f040134
        0x7f040135
        0x7f040136
        0x7f040137
    .end array-data

    :array_4a
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x101056f
        0x1010570
        0x7f040130
        0x7f040138
        0x7f040139
        0x7f04013a
        0x7f0402bc
    .end array-data

    :array_62
    .array-data 4
        0x7f04009b
        0x7f040159
        0x7f04015a
    .end array-data

    :array_6c
    .array-data 4
        0x7f040071
        0x7f0400ba
        0x7f04021d
    .end array-data

    :array_76
    .array-data 4
        0x7f0402bd
        0x7f0402be
        0x7f0402bf
        0x7f0402c0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
