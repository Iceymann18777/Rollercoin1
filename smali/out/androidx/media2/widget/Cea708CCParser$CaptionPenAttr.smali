.class public Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;
.super Ljava/lang/Object;
.source "Cea708CCParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionPenAttr"
.end annotation


# instance fields
.field public final edgeType:I

.field public final fontTag:I

.field public final italic:Z

.field public final penOffset:I

.field public final penSize:I

.field public final textTag:I

.field public final underline:Z


# direct methods
.method constructor <init>(IIIIIZZ)V
    .registers 8

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    iput p1, p0, Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;->penSize:I

    .line 801
    iput p2, p0, Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;->penOffset:I

    .line 802
    iput p3, p0, Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;->textTag:I

    .line 803
    iput p4, p0, Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;->fontTag:I

    .line 804
    iput p5, p0, Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;->edgeType:I

    .line 805
    iput-boolean p6, p0, Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;->underline:Z

    .line 806
    iput-boolean p7, p0, Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;->italic:Z

    return-void
.end method
