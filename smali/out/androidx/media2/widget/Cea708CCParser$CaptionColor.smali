.class public Landroidx/media2/widget/Cea708CCParser$CaptionColor;
.super Ljava/lang/Object;
.source "Cea708CCParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionColor"
.end annotation


# static fields
.field private static final COLOR_MAP:[I

.field private static final OPACITY_MAP:[I


# instance fields
.field public final blue:I

.field public final green:I

.field public final opacity:I

.field public final red:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 742
    fill-array-data v1, :array_10

    sput-object v1, Landroidx/media2/widget/Cea708CCParser$CaptionColor;->COLOR_MAP:[I

    new-array v0, v0, [I

    .line 743
    fill-array-data v0, :array_1c

    sput-object v0, Landroidx/media2/widget/Cea708CCParser$CaptionColor;->OPACITY_MAP:[I

    return-void

    :array_10
    .array-data 4
        0x0
        0xf
        0xf0
        0xff
    .end array-data

    :array_1c
    .array-data 4
        0xff
        0xfe
        0x80
        0x0
    .end array-data
.end method

.method constructor <init>(IIII)V
    .registers 5

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    iput p1, p0, Landroidx/media2/widget/Cea708CCParser$CaptionColor;->opacity:I

    .line 752
    iput p2, p0, Landroidx/media2/widget/Cea708CCParser$CaptionColor;->red:I

    .line 753
    iput p3, p0, Landroidx/media2/widget/Cea708CCParser$CaptionColor;->green:I

    .line 754
    iput p4, p0, Landroidx/media2/widget/Cea708CCParser$CaptionColor;->blue:I

    return-void
.end method
