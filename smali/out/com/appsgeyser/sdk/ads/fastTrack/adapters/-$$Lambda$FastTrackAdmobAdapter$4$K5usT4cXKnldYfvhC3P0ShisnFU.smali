.class public final synthetic Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$4$K5usT4cXKnldYfvhC3P0ShisnFU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;

.field public final synthetic f$1:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$4$K5usT4cXKnldYfvhC3P0ShisnFU;->f$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$4$K5usT4cXKnldYfvhC3P0ShisnFU;->f$1:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$4$K5usT4cXKnldYfvhC3P0ShisnFU;->f$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$4$K5usT4cXKnldYfvhC3P0ShisnFU;->f$1:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$4;->lambda$onAdLoaded$1$FastTrackAdmobAdapter$4(Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V

    return-void
.end method
