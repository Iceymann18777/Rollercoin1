.class public final synthetic Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$Hz22_sLnxFT17ROLNkhuaqs2Yto;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdClearedListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$Hz22_sLnxFT17ROLNkhuaqs2Yto;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onThresholdCleared(Lcom/appsgeyser/sdk/rateme/RatingDialog;FZ)V
    .registers 5

    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$Hz22_sLnxFT17ROLNkhuaqs2Yto;->f$0:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->lambda$initRatingDialog$2(Landroid/content/Context;Lcom/appsgeyser/sdk/rateme/RatingDialog;FZ)V

    return-void
.end method
