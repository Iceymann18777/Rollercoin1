.class public Lcom/mopub/mobileads/VastVideoConfig$VastVideoConfigTypeAdapterFactory;
.super Ljava/lang/Object;
.source "VastVideoConfig.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastVideoConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VastVideoConfigTypeAdapterFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    if-eqz p2, :cond_15

    .line 931
    const-class p1, Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_15

    .line 934
    :cond_f
    new-instance p1, Lcom/mopub/mobileads/VastVideoConfig$VastVideoConfigTypeAdapter;

    invoke-direct {p1}, Lcom/mopub/mobileads/VastVideoConfig$VastVideoConfigTypeAdapter;-><init>()V

    return-object p1

    :cond_15
    :goto_15
    const/4 p1, 0x0

    return-object p1
.end method
