.class Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CaptionTrack;
.super Landroidx/media2/widget/SubtitleTrack;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea708CaptionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cea708CaptionTrack"
.end annotation


# instance fields
.field private final mCCParser:Landroidx/media2/widget/Cea708CCParser;

.field private final mRenderingWidget:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;


# direct methods
.method constructor <init>(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;Landroid/media/MediaFormat;)V
    .registers 3

    .line 91
    invoke-direct {p0, p2}, Landroidx/media2/widget/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    .line 93
    iput-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CaptionTrack;->mRenderingWidget:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;

    .line 94
    new-instance p2, Landroidx/media2/widget/Cea708CCParser;

    invoke-direct {p2, p1}, Landroidx/media2/widget/Cea708CCParser;-><init>(Landroidx/media2/widget/Cea708CCParser$DisplayListener;)V

    iput-object p2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CaptionTrack;->mCCParser:Landroidx/media2/widget/Cea708CCParser;

    return-void
.end method


# virtual methods
.method public getRenderingWidget()Landroidx/media2/widget/SubtitleTrack$RenderingWidget;
    .registers 2

    .line 104
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CaptionTrack;->mRenderingWidget:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;

    return-object v0
.end method

.method public onData([BZJ)V
    .registers 5

    .line 99
    iget-object p2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CaptionTrack;->mCCParser:Landroidx/media2/widget/Cea708CCParser;

    invoke-virtual {p2, p1}, Landroidx/media2/widget/Cea708CCParser;->parse([B)V

    return-void
.end method
