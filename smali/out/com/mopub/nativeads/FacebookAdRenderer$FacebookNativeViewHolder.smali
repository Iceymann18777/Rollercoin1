.class Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;
.super Ljava/lang/Object;
.source "FacebookAdRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/FacebookAdRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FacebookNativeViewHolder"
.end annotation


# instance fields
.field private adChoicesContainer:Landroid/widget/RelativeLayout;

.field private adIconView:Lcom/facebook/ads/MediaView;

.field private advertiserNameView:Landroid/widget/TextView;

.field private callToActionView:Landroid/widget/TextView;

.field private mainView:Landroid/view/View;

.field private mediaView:Lcom/facebook/ads/MediaView;

.field private sponsoredLabelView:Landroid/widget/TextView;

.field private textView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;)Landroid/view/View;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->mainView:Landroid/view/View;

    return-object p0
.end method

.method static fromViewBinder(Landroid/view/View;Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;
    .registers 4

    if-eqz p0, :cond_5d

    if-nez p1, :cond_5

    goto :goto_5d

    .line 145
    :cond_5
    new-instance v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;

    invoke-direct {v0}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;-><init>()V

    .line 146
    iput-object p0, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->mainView:Landroid/view/View;

    .line 147
    iget v1, p1, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->titleId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->titleView:Landroid/widget/TextView;

    .line 148
    iget v1, p1, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->textId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->textView:Landroid/widget/TextView;

    .line 149
    iget v1, p1, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->callToActionId:I

    .line 150
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->callToActionView:Landroid/widget/TextView;

    .line 151
    iget v1, p1, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->adChoicesRelativeLayoutId:I

    .line 152
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->adChoicesContainer:Landroid/widget/RelativeLayout;

    .line 153
    iget v1, p1, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->mediaViewId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/MediaView;

    iput-object v1, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->mediaView:Lcom/facebook/ads/MediaView;

    .line 154
    iget v1, p1, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->adIconViewId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/MediaView;

    iput-object v1, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->adIconView:Lcom/facebook/ads/MediaView;

    .line 155
    iget v1, p1, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->advertiserNameId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->advertiserNameView:Landroid/widget/TextView;

    .line 156
    iget p1, p1, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->sponsoredLabelId:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->sponsoredLabelView:Landroid/widget/TextView;

    return-object v0

    .line 142
    :cond_5d
    :goto_5d
    new-instance p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;

    invoke-direct {p0}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;-><init>()V

    return-object p0
.end method


# virtual methods
.method public getAdChoicesContainer()Landroid/widget/RelativeLayout;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->adChoicesContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getAdIconView()Lcom/facebook/ads/MediaView;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->adIconView:Lcom/facebook/ads/MediaView;

    return-object v0
.end method

.method public getAdvertiserNameView()Landroid/widget/TextView;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->advertiserNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCallToActionView()Landroid/widget/TextView;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->callToActionView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMainView()Landroid/view/View;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->mainView:Landroid/view/View;

    return-object v0
.end method

.method public getMediaView()Lcom/facebook/ads/MediaView;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->mediaView:Lcom/facebook/ads/MediaView;

    return-object v0
.end method

.method public getSponsoredLabelView()Landroid/widget/TextView;
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->sponsoredLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->titleView:Landroid/widget/TextView;

    return-object v0
.end method
