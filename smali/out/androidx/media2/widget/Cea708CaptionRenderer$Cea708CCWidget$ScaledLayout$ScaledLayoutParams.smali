.class Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScaledLayoutParams"
.end annotation


# instance fields
.field public scaleEndCol:F

.field public scaleEndRow:F

.field public scaleStartCol:F

.field public scaleStartRow:F

.field final synthetic this$2:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;


# direct methods
.method constructor <init>(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;FFFF)V
    .registers 6

    .line 203
    iput-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->this$2:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    const/4 p1, -0x1

    .line 204
    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 205
    iput p2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartRow:F

    .line 206
    iput p3, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndRow:F

    .line 207
    iput p4, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartCol:F

    .line 208
    iput p5, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndCol:F

    return-void
.end method

.method constructor <init>(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 211
    iput-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->this$2:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    const/4 p1, -0x1

    .line 212
    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-void
.end method
