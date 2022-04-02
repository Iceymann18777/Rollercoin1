.class Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;
.super Landroidx/media2/widget/ClosedCaptionWidget;
.source "Cea608CaptionRenderer.java"

# interfaces
.implements Landroidx/media2/widget/Cea608CCParser$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea608CaptionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Cea608CCWidget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;,
        Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;
    }
.end annotation


# instance fields
.field final mTextBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Landroidx/media2/widget/Cea608CaptionRenderer;


# direct methods
.method constructor <init>(Landroidx/media2/widget/Cea608CaptionRenderer;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;-><init>(Landroidx/media2/widget/Cea608CaptionRenderer;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/widget/Cea608CaptionRenderer;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;-><init>(Landroidx/media2/widget/Cea608CaptionRenderer;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/widget/Cea608CaptionRenderer;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 117
    iput-object p1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;->this$0:Landroidx/media2/widget/Cea608CaptionRenderer;

    .line 118
    invoke-direct {p0, p2, p3, p4}, Landroidx/media2/widget/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;->mTextBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public createCaptionLayout(Landroid/content/Context;)Landroidx/media2/widget/ClosedCaptionWidget$ClosedCaptionLayout;
    .registers 3

    .line 123
    new-instance v0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;

    invoke-direct {v0, p0, p1}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;-><init>(Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;Landroid/content/Context;)V

    return-object v0
.end method

.method public getCaptionStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .registers 2

    .line 137
    iget-object v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-object v0
.end method

.method public onDisplayChanged([Landroid/text/SpannableStringBuilder;)V
    .registers 3

    .line 128
    iget-object v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;->mClosedCaptionLayout:Landroidx/media2/widget/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;

    invoke-virtual {v0, p1}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->update([Landroid/text/SpannableStringBuilder;)V

    .line 130
    iget-object p1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;->mListener:Landroidx/media2/widget/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz p1, :cond_10

    .line 131
    iget-object p1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;->mListener:Landroidx/media2/widget/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {p1, p0}, Landroidx/media2/widget/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroidx/media2/widget/SubtitleTrack$RenderingWidget;)V

    :cond_10
    return-void
.end method
