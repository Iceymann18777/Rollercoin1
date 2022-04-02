.class public final Lcom/tappx/a/w$j;
.super Lcom/tappx/a/v$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "j"
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tappx/a/d0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/tappx/a/d0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/d0<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/tappx/a/v$b;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tappx/a/w$j;->a:Lcom/tappx/a/d0;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tappx/a/d0;Lcom/tappx/a/w$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/w$j;-><init>(Lcom/tappx/a/d0;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/tappx/a/d0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tappx/a/d0<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tappx/a/w$j;->a:Lcom/tappx/a/d0;

    return-object v0
.end method
