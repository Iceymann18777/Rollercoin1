.class public interface abstract Lcom/yandex/metrica/IIdentifierCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/IIdentifierCallback$Reason;
    }
.end annotation


# virtual methods
.method public abstract onReceive(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRequestError(Lcom/yandex/metrica/IIdentifierCallback$Reason;)V
.end method
