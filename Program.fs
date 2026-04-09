open Microsoft.AspNetCore.Builder
open Microsoft.Extensions.Hosting

let builder = WebApplication.CreateBuilder()
let app = builder.Build()
app.MapGet("/", (fun () -> "Hello World")) |> ignore
app.Run()
