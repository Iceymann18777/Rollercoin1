.class public final Lcom/tappx/sdk/android/adapters/mopub/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/sdk/android/adapters/mopub/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final RecyclerView:[I

.field public static final RecyclerView_android_clipToPadding:I = 0x1

.field public static final RecyclerView_android_descendantFocusability:I = 0x2

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x3

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x4

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0x5

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x6

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x7

.field public static final RecyclerView_layoutManager:I = 0x8

.field public static final RecyclerView_reverseLayout:I = 0x9

.field public static final RecyclerView_spanCount:I = 0xa

.field public static final RecyclerView_stackFromEnd:I = 0xb

.field public static final TappxParams:[I

.field public static final TappxParams_txAdSize:I = 0x0

.field public static final TappxParams_txAppKey:I = 0x1

.field public static final TappxParams_txAutoPrivacyDisclaimer:I = 0x2

.field public static final TappxParams_txRefreshTime:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/tappx/sdk/android/adapters/mopub/R$styleable;->RecyclerView:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/tappx/sdk/android/adapters/mopub/R$styleable;->TappxParams:[I

    return-void

    :array_12
    .array-data 4
        0x10100c4
        0x10100eb
        0x10100f1
        0x7f040128
        0x7f040129
        0x7f04012a
        0x7f04012b
        0x7f04012c
        0x7f04017e
        0x7f040216
        0x7f040240
        0x7f040246
    .end array-data

    :array_2e
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
