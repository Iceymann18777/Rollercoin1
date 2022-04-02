.class public final Lcom/tappx/a/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/g1$b;,
        Lcom/tappx/a/g1$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/tappx/a/g1$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tappx/a/g1$a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/g1;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/g1;->b:Lcom/tappx/a/g1$a;

    return-void
.end method
