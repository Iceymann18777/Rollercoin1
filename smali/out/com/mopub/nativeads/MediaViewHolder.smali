.class Lcom/mopub/nativeads/MediaViewHolder;
.super Ljava/lang/Object;
.source "MediaViewHolder.java"


# static fields
.field static final EMPTY_MEDIA_VIEW_HOLDER:Lcom/mopub/nativeads/MediaViewHolder;


# instance fields
.field callToActionView:Landroid/widget/TextView;

.field iconImageView:Landroid/widget/ImageView;

.field mainView:Landroid/view/View;

.field mediaLayout:Lcom/mopub/nativeads/MediaLayout;

.field privacyInformationIconImageView:Landroid/widget/ImageView;

.field sponsoredTextView:Landroid/widget/TextView;

.field textView:Landroid/widget/TextView;

.field titleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lcom/mopub/nativeads/MediaViewHolder;

    invoke-direct {v0}, Lcom/mopub/nativeads/MediaViewHolder;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/MediaViewHolder;->EMPTY_MEDIA_VIEW_HOLDER:Lcom/mopub/nativeads/MediaViewHolder;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromViewBinder(Landroid/view/View;Lcom/mopub/nativeads/MediaViewBinder;)Lcom/mopub/nativeads/MediaViewHolder;
    .registers 5

    .line 38
    new-instance v0, Lcom/mopub/nativeads/MediaViewHolder;

    invoke-direct {v0}, Lcom/mopub/nativeads/MediaViewHolder;-><init>()V

    .line 39
    iput-object p0, v0, Lcom/mopub/nativeads/MediaViewHolder;->mainView:Landroid/view/View;

    .line 41
    :try_start_7
    iget v1, p1, Lcom/mopub/nativeads/MediaViewBinder;->titleId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/MediaViewHolder;->titleView:Landroid/widget/TextView;

    .line 42
    iget v1, p1, Lcom/mopub/nativeads/MediaViewBinder;->textId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/MediaViewHolder;->textView:Landroid/widget/TextView;

    .line 43
    iget v1, p1, Lcom/mopub/nativeads/MediaViewBinder;->callToActionId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/MediaViewHolder;->callToActionView:Landroid/widget/TextView;

    .line 44
    iget v1, p1, Lcom/mopub/nativeads/MediaViewBinder;->mediaLayoutId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativeads/MediaLayout;

    iput-object v1, v0, Lcom/mopub/nativeads/MediaViewHolder;->mediaLayout:Lcom/mopub/nativeads/MediaLayout;

    .line 45
    iget v1, p1, Lcom/mopub/nativeads/MediaViewBinder;->iconImageId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mopub/nativeads/MediaViewHolder;->iconImageView:Landroid/widget/ImageView;

    .line 46
    iget v1, p1, Lcom/mopub/nativeads/MediaViewBinder;->privacyInformationIconImageId:I

    .line 47
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mopub/nativeads/MediaViewHolder;->privacyInformationIconImageView:Landroid/widget/ImageView;

    .line 48
    iget p1, p1, Lcom/mopub/nativeads/MediaViewBinder;->sponsoredTextId:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/mopub/nativeads/MediaViewHolder;->sponsoredTextView:Landroid/widget/TextView;
    :try_end_4d
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_4d} :catch_4e

    return-object v0

    :catch_4e
    move-exception p0

    .line 51
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Could not cast from id in MediaViewBinder to expected View type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 53
    sget-object p0, Lcom/mopub/nativeads/MediaViewHolder;->EMPTY_MEDIA_VIEW_HOLDER:Lcom/mopub/nativeads/MediaViewHolder;

    return-object p0
.end method
