.class public Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidEvent;
.super Ljava/lang/Object;
.source "AvidEvent.java"


# instance fields
.field private data:Lorg/json/JSONObject;

.field private tag:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidEvent;-><init>(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidEvent;->tag:I

    .line 16
    iput-object p2, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidEvent;->type:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidEvent;->data:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidEvent;->data:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidEvent;->tag:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lorg/json/JSONObject;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidEvent;->data:Lorg/json/JSONObject;

    return-void
.end method

.method public setTag(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidEvent;->tag:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidEvent;->type:Ljava/lang/String;

    return-void
.end method
