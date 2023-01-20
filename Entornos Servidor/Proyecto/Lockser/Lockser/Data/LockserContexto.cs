using Lockser.Models;
using Microsoft.EntityFrameworkCore;

namespace Lockser.Data
{
    public class LockserContexto : DbContext
    {
        public LockserContexto(DbContextOptions<LockserContexto> options)
        : base(options)
        {
        }
        public DbSet<Categoria>? Categorias { get; set; }
        public DbSet<Producto>? Productos { get; set; }
        public DbSet<Cliente>? Clientes { get; set; }
        public DbSet<Estado>? Estados { get; set; }
        public DbSet<Pedido>? Pedidos { get; set; }
        public DbSet<Detalle>? Detalles { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            // Deshabilitar la eliminación en cascada en todas las relaciones
            base.OnModelCreating(modelBuilder);
            foreach (var relationship in
            modelBuilder.Model.GetEntityTypes().SelectMany(e => e.GetForeignKeys()))
            {
                relationship.DeleteBehavior = DeleteBehavior.Restrict;
            }
        }
    }

}
