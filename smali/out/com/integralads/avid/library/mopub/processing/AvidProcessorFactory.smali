.class public Lcom/integralads/avid/library/mopub/processing/AvidProcessorFactory;
.super Ljava/lang/Object;
.source "AvidProcessorFactory.java"


# instance fields
.field private screenProcessor:Lcom/integralads/avid/library/mopub/processing/AvidSceenProcessor;

.field private viewProcessor:Lcom/integralads/avid/library/mopub/processing/AvidViewProcessor;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/integralads/avid/library/mopub/processing/AvidViewProcessor;

    invoke-direct {v0}, Lcom/integralads/avid/library/mopub/processing/AvidViewProcessor;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/processing/AvidProcessorFactory;->viewProcessor:Lcom/integralads/avid/library/mopub/processing/AvidViewProcessor;

    .line 10
    new-instance v1, Lcom/integralads/avid/library/mopub/processing/AvidSceenProcessor;

    invoke-direct {v1, v0}, Lcom/integralads/avid/library/mopub/processing/AvidSceenProcessor;-><init>(Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;)V

    iput-object v1, p0, Lcom/integralads/avid/library/mopub/processing/AvidProcessorFactory;->screenProcessor:Lcom/integralads/avid/library/mopub/processing/AvidSceenProcessor;

    return-void
.end method


# virtual methods
.method public getRootProcessor()Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/processing/AvidProcessorFactory;->screenProcessor:Lcom/integralads/avid/library/mopub/processing/AvidSceenProcessor;

    return-object v0
.end method
